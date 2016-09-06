package cose.util;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

import cose.util.segment.IctclasTokenizer;

import edu.udo.cs.wvtool.config.WVTConfiguration;
import edu.udo.cs.wvtool.config.WVTConfigurationFact;
import edu.udo.cs.wvtool.generic.stemmer.DummyStemmer;
import edu.udo.cs.wvtool.generic.stemmer.WVTStemmer;
import edu.udo.cs.wvtool.generic.tokenizer.SimpleTokenizer;
import edu.udo.cs.wvtool.generic.tokenizer.WVTTokenizer;
import edu.udo.cs.wvtool.generic.wordfilter.AbstractStopWordFilter;
import edu.udo.cs.wvtool.generic.wordfilter.DummyWordFilter;
import edu.udo.cs.wvtool.main.WVTDocumentInfo;
import edu.udo.cs.wvtool.main.WVTFileInputList;
import edu.udo.cs.wvtool.main.WVTool;
import edu.udo.cs.wvtool.wordlist.WVTWordList;

public class Segment {
	public List<String> segment(String s) throws Exception {
		System.out.println("in segment 1");
		List<String> wordlist = new ArrayList<String>();
		FileWriter fw = new FileWriter("temp.txt");
		fw.write(s);
		fw.flush();
    	WVTool wvt = new WVTool(false);
		// ��ʼ��һ��configuration����
		WVTConfiguration config = new WVTConfiguration();
		// ָ�����ִ���ʽ����ͣ�ôʹ��ˡ��ִ��㷨���ʸ���ȡ��
		WVTStemmer stemmer = new DummyStemmer();// TODO �ʸ���ȡ
		// TODO �ִʴ���ӹ��˴�
		WVTTokenizer tk = new IctclasTokenizer(new SimpleTokenizer());
	    AbstractStopWordFilter filter = new DummyWordFilter();// ����Ĺ��˴ʲ����й��ˣ���Ϊ�ִʵ�ʱ���Ѿ����˹��ˡ�
		filter.setMinNumChars(1);
		config.setConfigurationRule(WVTConfiguration.STEP_TOKENIZER, new WVTConfigurationFact(tk));
		config.setConfigurationRule(WVTConfiguration.STEP_STEMMER, new WVTConfigurationFact(stemmer));
		config.setConfigurationRule(WVTConfiguration.STEP_WORDFILTER, new WVTConfigurationFact(filter));
		WVTFileInputList list = new WVTFileInputList(1);
		System.out.println("in segment 2");
		list.addEntry(new WVTDocumentInfo("temp.txt", "txt","", "chinese",1));//add file
		WVTWordList wordList = wvt.createWordList(list, config);
		int wordNum=wordList.getNumWords();
		for(int i=0;i<wordNum;i++){
			wordlist.add(wordList.getWord(i));
		}
		fw.close();
		return wordlist;
    }
	public static void main(String[]args){
		Segment s = new Segment();
		try {
			String title = "����Ѹ";
			List<String> wordlist=s.segment(title);
			for(int i=0;i<wordlist.size();i++){
				System.out.println(wordlist.get(i));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
