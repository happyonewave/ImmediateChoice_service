package com.qczt.xg.util;

import java.sql.ResultSet;

import net.sf.json.JSONArray;

public class TopicUtils {
	public static JSONArray getQuestionFromTopicId(int topic_id) {

		// SELECT group_id,name FROM group_info WHERE owner_id = 1

		String sql = "SELECT * FROM question WHERE topic_id = "
				+ topic_id;
		try {

			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray array = Tools.getJsonByArguments("question",rs);
			return array;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
