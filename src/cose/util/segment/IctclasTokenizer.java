package cose.util.segment;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.ictclas4j.bean.SegResult;
import org.ictclas4j.segment.SegTag;

import edu.udo.cs.wvtool.generic.tokenizer.WVTTokenizer;
import edu.udo.cs.wvtool.main.WVTDocumentInfo;
import edu.udo.cs.wvtool.util.TokenEnumeration;
import edu.udo.cs.wvtool.util.WVToolException;

/**
 * �ִʴ�������
 * 
 * @author taofucheng
 * 
 */
public class IctclasTokenizer implements WVTTokenizer, TokenEnumeration {

	/*public static void main(String[] args) {
		String line = "���ĸ����˸�������ͼ��ݵĶ��� ,��˵���˹����������ͼ����������Ӧ�߱��Ļ������� ,"
				+ "������8���ʺϹ�����������ͼ��ݵ�ȫ�����ݿ������� ,�������ǽ�������ϸ���������� ,���������۽����" + "���ָ�� ,��������ܽǶȽ� ,������������ͼ��ݵ�ʱ���Ѿ������������鱨ѧ";
		SegResult sr = st.split(line);
	//	System.out.println(sr.getFinalResult());
		System.out.println(sr.getWordList());
	}*/

	private static final SegTag st = new SegTag(1);
	private final List<String> currentTokens = new ArrayList<String>();
	private TokenEnumeration input;
	private final WVTTokenizer tokenizer;

	public IctclasTokenizer(WVTTokenizer tokenizer) {

		super();
		this.input = null;
		this.tokenizer = tokenizer;
	}

	public TokenEnumeration tokenize(Reader source, WVTDocumentInfo d) throws WVToolException {

		if (source != null) {
			input = tokenizer.tokenize(source, d);
			readNextToken();
			return this;
		} else {
			return null;
		}
	}

	// �ִ�
	public void readNextToken() throws WVToolException {
		if (input.hasMoreTokens()) {
			String token = input.nextToken();
			if (token.length() > 0) {
				SegResult sr = st.split(token);
				currentTokens.addAll(sr.getWordList());// �����Ҹ���ictclas��д�ķִʳ���
			}
		}
	}

	public boolean hasMoreTokens() {
		return currentTokens.size() > 0;
	}

	public String nextToken() throws WVToolException {
		String result = null;
		if (currentTokens.size() > 0) {
			result = (String) currentTokens.get(0);
			currentTokens.remove(0);
			if (currentTokens.size() == 0) {
				readNextToken();
			}
		} else {
			result = null;
		}
		return result;
	}
}

