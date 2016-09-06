package org.ictclas4j.segment;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.io.IOUtils;
import org.ictclas4j.bean.Atom;
import org.ictclas4j.bean.Dictionary;
import org.ictclas4j.bean.MidResult;
import org.ictclas4j.bean.SegNode;
import org.ictclas4j.bean.SegResult;
import org.ictclas4j.bean.Sentence;
import org.ictclas4j.utility.DicUtils;
import org.ictclas4j.utility.POSTag;
import org.ictclas4j.utility.Utility;

public class SegTag {
	private Dictionary coreDict;
	private Dictionary bigramDict;
	private Set<String> stopwords;
	private PosTagger personTagger;
	private PosTagger transPersonTagger;
	private PosTagger placeTagger;
	private PosTagger lexTagger;

	private int segPathCount = 1;// �ִ�·������Ŀ
	private boolean mark = true;// �Ƿ�Ҫ��ע���Ե���Ϣ

	public boolean isMark() {
		return mark;
	}

	public void setMark(boolean mark) {
		this.mark = mark;
	}

	public boolean isWrap() {
		return wrap;
	}

	public void setWrap(boolean wrap) {
		this.wrap = wrap;
	}

	private boolean wrap = true;// �Ƿ�Ҫ��ÿ���ʽ��л���

	public SegTag(int segPathCount) {
		this.segPathCount = segPathCount;
		coreDict = new Dictionary("/ictclas/data/coreDict.dct");

		bigramDict = new Dictionary("/ictclas/data/bigramDict.dct");
		personTagger = new PosTagger(Utility.TAG_TYPE.TT_PERSON, "/ictclas/data/nr", coreDict);
		transPersonTagger = new PosTagger(Utility.TAG_TYPE.TT_TRANS_PERSON, "/ictclas/data/tr", coreDict);
		placeTagger = new PosTagger(Utility.TAG_TYPE.TT_TRANS_PERSON, "/ictclas/data/ns", coreDict);
		lexTagger = new PosTagger(Utility.TAG_TYPE.TT_NORMAL, "/ictclas/data/lexical", coreDict);
		stopwords = new HashSet<String>();
		DicUtils.loadWords("/stopword.dic", stopwords);
	}

	public SegResult split(String src) {
		SegResult sr = new SegResult(src);// �ִʽ��
		String finalResult = null;

		if (src != null) {
			finalResult = "";
			int index = 0;
			String midResult = null;
			sr.setRawContent(src);
			SentenceSeg ss = new SentenceSeg(src);
			ArrayList<Sentence> sens = ss.getSens();

			for (Sentence sen : sens) {
				MidResult mr = new MidResult();
				mr.setIndex(index++);
				mr.setSource(sen.getContent());
				if (sen.isSeg()) {
					// ԭ�ӷִ�
					long start = System.currentTimeMillis();
					AtomSeg as = new AtomSeg(sen.getContent());
					ArrayList<Atom> atoms = as.getAtoms();
					mr.setAtoms(atoms);
					println2Err("[atom time]:" + (System.currentTimeMillis() - start));
					start = System.currentTimeMillis();

					// ���ɷִ�ͼ��,�Ƚ��г����ִʣ�Ȼ������Ż��������д��Ա��
					SegGraph segGraph = GraphGenerate.generate(atoms, coreDict);
					mr.setSegGraph(segGraph.getSnList());
					// ���ɶ���ִ�ͼ��
					SegGraph biSegGraph = GraphGenerate.biGenerate(segGraph, coreDict, bigramDict);
					mr.setBiSegGraph(biSegGraph.getSnList());
					println2Err("[graph time]:" + (System.currentTimeMillis() - start));
					start = System.currentTimeMillis();

					// ��N���·��
					NShortPath nsp = new NShortPath(biSegGraph, segPathCount);
					ArrayList<ArrayList<Integer>> bipath = nsp.getPaths();
					mr.setBipath(bipath);
					println2Err("[NSP time]:" + (System.currentTimeMillis() - start));
					start = System.currentTimeMillis();

					for (ArrayList<Integer> onePath : bipath) {
						// �õ����ηִ�·��
						ArrayList<SegNode> segPath = getSegPath(segGraph, onePath);
						ArrayList<SegNode> firstPath = AdjustSeg.firstAdjust(segPath);
						String firstResult = outputResult(firstPath);
						mr.addFirstResult(firstResult);
						println2Err("[first time]:" + (System.currentTimeMillis() - start));
						start = System.currentTimeMillis();

						// ����δ��½�ʣ����Գ��ηִʽ�������Ż�
						SegGraph optSegGraph = new SegGraph(firstPath);
						ArrayList<SegNode> sns = clone(firstPath);
						personTagger.recognition(optSegGraph, sns);
						transPersonTagger.recognition(optSegGraph, sns);
						placeTagger.recognition(optSegGraph, sns);
						mr.setOptSegGraph(optSegGraph.getSnList());
						println2Err("[unknown time]:" + (System.currentTimeMillis() - start));
						start = System.currentTimeMillis();

						// �����Ż���Ľ�������½������ɶ���ִ�ͼ��
						SegGraph optBiSegGraph = GraphGenerate.biGenerate(optSegGraph, coreDict, bigramDict);
						mr.setOptBiSegGraph(optBiSegGraph.getSnList());

						// ������ȡN�����·��
						NShortPath optNsp = new NShortPath(optBiSegGraph, segPathCount);
						ArrayList<ArrayList<Integer>> optBipath = optNsp.getPaths();
						mr.setOptBipath(optBipath);

						// �����Ż���ķִʽ�������Խ�����д��Ա�Ǻ������Ż���������
						ArrayList<SegNode> adjResult = null;
						for (ArrayList<Integer> optOnePath : optBipath) {
							ArrayList<SegNode> optSegPath = getSegPath(optSegGraph, optOnePath);
							lexTagger.recognition(optSegPath);
							String optResult = outputResult(optSegPath);
							mr.addOptResult(optResult);
							adjResult = AdjustSeg.finaAdjust(optSegPath, personTagger, placeTagger);
							String adjrs = outputResult(adjResult);
							println2Err("[last time]:" + (System.currentTimeMillis() - start));
							start = System.currentTimeMillis();
							if (midResult == null) {
								midResult = adjrs;
								if (adjResult != null && !adjResult.isEmpty()) {
									for (SegNode node : adjResult) {
										if (Utility.SENTENCE_BEGIN.equals(node.getSrcWord())
												|| Utility.SENTENCE_END.equals(node.getSrcWord())) {
											continue;
										}
										if (stopwords.contains(node.getSrcWord())) {
											continue;// �����ͣ�ôʣ���������
										}
										sr.addWord(node.getSrcWord());
									}
								}
							}
							break;
						}
					}
					sr.addMidResult(mr);
				} else {
					midResult = sen.getContent();
					if (stopwords.contains(midResult)) {
						midResult = "";// �����ͣ�ôʣ��򽫴ʲ����뵽�����
					}
				}
				finalResult += midResult;
				midResult = null;
			}

			sr.setFinalResult(finalResult);
		}

		return sr;
	}

	private ArrayList<SegNode> clone(ArrayList<SegNode> sns) {
		ArrayList<SegNode> result = null;
		if (sns != null && sns.size() > 0) {
			result = new ArrayList<SegNode>();
			for (SegNode sn : sns)
				result.add(sn.clone());
		}
		return result;
	}

	// ���ݶ���ִ�·�����ɷִ�·��
	private ArrayList<SegNode> getSegPath(SegGraph sg, ArrayList<Integer> bipath) {
		ArrayList<SegNode> path = null;

		if (sg != null && bipath != null) {
			ArrayList<SegNode> sns = sg.getSnList();
			path = new ArrayList<SegNode>();

			for (int index : bipath)
				path.add(sns.get(index));
		}
		return path;
	}

	// ���ݷִ�·�����ɷִʽ��
	private String outputResult(ArrayList<SegNode> wrList) {
		StringBuilder result = null;
		String temp = null;
		char[] pos = new char[2];
		if (wrList != null && wrList.size() > 0) {
			result = new StringBuilder();
			for (int i = 0; i < wrList.size(); i++) {
				SegNode sn = wrList.get(i);
				if (stopwords.contains(sn.getSrcWord())) {
					continue;// �����ͣ�ôʣ��򲻴���
				}
				if (sn.getPos() != POSTag.SEN_BEGIN && sn.getPos() != POSTag.SEN_END) {
					int tag = Math.abs(sn.getPos());
					pos[0] = (char) (tag / 256);
					pos[1] = (char) (tag % 256);
					temp = "" + pos[0];
					if (pos[1] > 0) {
						temp += "" + pos[1];
					}
					result.append(sn.getSrcWord());
					if (mark) {
						result.append("/");
						result.append(temp);
						result.append(" ");
					}
					if (wrap) {
						result.append(IOUtils.LINE_SEPARATOR);
					}
					if(!mark && !wrap)
					{
						result.append(" ");
					}
				}
			}
		}
		return result == null ? null : result.toString();
	}

	public void setSegPathCount(int segPathCount) {
		this.segPathCount = segPathCount;
	}

	public static void main(String[] args) {
		SegTag segTag = new SegTag(1);

		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String line = null;
		try {
			while ((line = reader.readLine()) != null) {
				try {
					SegResult seg_res = segTag.split(line);
					System.out.println(seg_res.getFinalResult());
				} catch (Throwable t) {
					t.printStackTrace();
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void println2Err(String str) {
		// System.err.println(str);
	}
}