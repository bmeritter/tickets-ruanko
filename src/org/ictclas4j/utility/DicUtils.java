package org.ictclas4j.utility;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

public class DicUtils {
	/**
	 * �����ļ��еĴʵ�ָ���ļ��Ͻṹ��
	 * 
	 * @param dicFile
	 *            �ʵ���classpath�е�·��
	 * @param words
	 *            �ʵ����ڴ��еĴ洢
	 */
	public static void loadWords(String dicFile, Set<String> words) {
		System.out.println("ͣ�ôʱ�λ��"+dicFile);
		if (StringUtils.isBlank(dicFile)) {
			System.err.println("file [" + dicFile + "] is not found!");
			return;
		}
		if (words == null) {
			System.err.println("words set is empty!!");
		}
		File file = new File(System.getProperty("java.io.tmpdir") + File.separator + "stopwords.dic");
		System.out.println("��ʱ�ʱ��ļ���" + file);
		if (file.isFile()) {
			// return;// ����ʱ��ļ��Ѿ����ڣ��򲻴���
			try {
				FileUtils.forceDelete(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			FileUtils.copyInputStreamToFile(DicUtils.class.getResourceAsStream(dicFile), file);
			List<String> lines = FileUtils.readLines(file, "GBK");
			if (lines != null && !lines.isEmpty()) {
				words.addAll(lines);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
