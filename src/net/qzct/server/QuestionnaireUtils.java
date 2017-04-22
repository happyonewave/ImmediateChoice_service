package net.qzct.server;

import java.sql.ResultSet;

import com.sun.deploy.uitoolkit.impl.fx.Utils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class QuestionnaireUtils {

	public static int getOptionChoiceCount(int questionnaire_quuestion_id,String num) {

		// select * from friend where user_id = 2
		String sql = "SELECT COUNT(*) FROM questionnaire_choice WHERE questionnaire_quuestion_id = "+questionnaire_quuestion_id+" AND num = " + num;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public static JSONArray getQuestionOptions(int questionnaire_question_id) {

		// select * from friend where user_id = 2
		String sql = "select num,content" +
				" from questionnaire_quuestion_options where questionnaire_question_id = " + questionnaire_question_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray json =new JSONArray();
			while(rs.next()){
				JSONObject object = new JSONObject();
				String num = rs.getString("num");
				String context = rs.getString("content");
				object.put("num", num);
				object.put("content", context);
				json.add(object);
			}
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String getQuestionTitle(int questionnaire_question_id) {
		String sql = "SELECT title FROM questionnaire_question WHERE questionnaire_question_id = " + questionnaire_question_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			while(rs.next()){
				String title = rs.getString("title");
				return title;
			}
			return "";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
