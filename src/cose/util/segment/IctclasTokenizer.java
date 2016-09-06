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
 * 分词处理器。
 * 
 * @author taofucheng
 * 
 */
public class IctclasTokenizer implements WVTTokenizer, TokenEnumeration {

	/*public static void main(String[] args) {
		String line = "本文给出了个人数字图书馆的定义 ,简单说明了构造个人数字图书馆所需软件应具备的基本性能 ,"
				+ "介绍了8种适合构建个人数字图书馆的全文数据库管理软件 ,并对它们进行了详细测试与评价 ,给出了评价结果。" + "最后指出 ,从软件性能角度讲 ,构建个人数字图书馆的时代已经到来。——情报学";
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

	// 分词
	public void readNextToken() throws WVToolException {
		if (input.hasMoreTokens()) {
			String token = input.nextToken();
			if (token.length() > 0) {
				SegResult sr = st.split(token);
				currentTokens.addAll(sr.getWordList());// 这是我根据ictclas编写的分词程序
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

