package org.ictclas4j.utility;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

public class DicUtils {
	/**
	 * 加载文件中的词到指定的集合结构中
	 * 
	 * @param dicFile
	 *            词典在classpath中的路径
	 * @param words
	 *            词典在内存中的存储
	 */
	public static void loadWords(String dicFile, Set<String> words) {
		System.out.println("停用词表位置"+dicFile);
		if (StringUtils.isBlank(dicFile)) {
			System.err.println("file [" + dicFile + "] is not found!");
			return;
		}
		if (words == null) {
			System.err.println("words set is empty!!");
		}
		File file = new File(System.getProperty("java.io.tmpdir") + File.separator + "stopwords.dic");
		System.out.println("临时词表文件：" + file);
		if (file.isFile()) {
			// return;// 如果词表文件已经存在，则不处理！
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
