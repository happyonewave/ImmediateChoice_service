package net.qzct.server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.concurrent.CountDownLatch;

import com.sun.deploy.uitoolkit.impl.fx.Utils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class QuestionnaireUtils {

	public static int getOptionChoiceCount(int questionnaire_question_id,
			String num) {

		// select * from friend where user_id = 2
		String sql = "SELECT COUNT(*) FROM questionnaire_choice WHERE questionnaire_question_id = "
				+ questionnaire_question_id + " AND num = " + num;
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
		String sql = "select num,content"
				+ " from questionnaire_question_options where questionnaire_question_id = "
				+ questionnaire_question_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray json = new JSONArray();
			while (rs.next()) {
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
		String sql = "SELECT title FROM questionnaire_question WHERE questionnaire_question_id = "
				+ questionnaire_question_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			while (rs.next()) {
				String title = rs.getString("title");
				return title;
			}
			return "";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static JSONArray getQuestionnaireQuestionOptions(
			int questionnaire_question_id) {
		String sql = "SELECT * FROM questionnaire_question_options WHERE questionnaire_question_id = "
				+ questionnaire_question_id + " ORDER BY num";
		System.out.println("getQuestionnaireQuestionOptions:	" + sql);
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray json = Tools.getJsonByArguments(
					"questionnaire_question_options", rs);
			if (!json.isEmpty()) {
				return json;
			} else {
				return new JSONArray().fromObject("[]");
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public static JSONArray getQuestionnaireQuestion(int questionnaire_id) {
		String sql = "SELECT * FROM questionnaire_question WHERE questionnaire_id = "
				+ questionnaire_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			// JSONArray json =
			// Tools.getJsonByArguments("questionnaire_question", rs);
			JSONArray array = new JSONArray();
			while (rs.next()) {
				JSONObject object = new JSONObject();
				int questionnaire_question_id = rs
						.getInt("questionnaire_question_id");
				// int questionnaire_id = rs.getInt("questionnaire_id");
				String title = rs.getString("title");
				JSONArray optionArray = getQuestionnaireQuestionOptions(questionnaire_question_id);
				System.out.println("optionArray:	" + optionArray.toString());
				object.put("questionnaire_question_id",
						questionnaire_question_id);
				object.put("questionnaire_id", questionnaire_id);
				object.put("title", title);
				object.put("optionArray", optionArray);
				array.add(object);

			}
			if (!array.isEmpty()) {
				return array;
			} else {
				return new JSONArray().fromObject("[]");
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new JSONArray().fromObject("[]");
		}

	}

	public static JSONArray getQuestionnaireFromUserId(int user_id) {
		String sql = "SELECT * FROM questionnaire_info WHERE user_id = "
				+ user_id;
		System.out.println("getQuestionnaireFromUserId:	" + sql);
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			// JSONArray json =
			// Tools.getJsonByArguments("questionnaire_question", rs);
			JSONArray array = new JSONArray();
			while (rs.next()) {
				JSONObject object = new JSONObject();
				int questionnaire_id = rs.getInt("questionnaire_id");
				String title = rs.getString("title");
				String hint = rs.getString("hint");
				JSONArray questionArray = getQuestionnaireQuestion(questionnaire_id);
				System.out
						.println("questionArray:	" + questionArray.toString());
				object.put("questionnaire_id", questionnaire_id);
				object.put("user_id", user_id);
				object.put("title", title);
				object.put("hint", hint);
				object.put("questionArray", questionArray);
				array.add(object);

			}
			if (!array.isEmpty()) {
				return array;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public static JSONArray getQuestionnaireFromQuestionnaireId(
			int questionnaire_id) {
		String sql = "SELECT * FROM questionnaire_info WHERE questionnaire_id = "
				+ questionnaire_id;
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			// JSONArray json =
			// Tools.getJsonByArguments("questionnaire_question", rs);
			JSONArray array = new JSONArray();
			while (rs.next()) {
				JSONObject object = new JSONObject();
				// int questionnaire_id = rs.getInt("questionnaire_id");
				String title = rs.getString("title");
				String hint = rs.getString("hint");
				int user_id = rs.getInt("user_id");
				JSONArray questionArray = getQuestionnaireQuestion(questionnaire_id);
				object.put("questionnaire_id", questionnaire_id);
				object.put("user_id", user_id);
				object.put("title", title);
				object.put("hint", hint);
				object.put("questionArray", questionArray);
				array.add(object);

			}
			if (!array.isEmpty()) {
				return array;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public static JSONArray getQuestionnaireIds() {
		String sql = "SELECT questionnaire_id FROM questionnaire_info  ";
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray outArray = new JSONArray();
			while (rs.next()) {
				outArray.add(rs.getInt(1));
			}
			return outArray;
		} catch (Exception e) {
			e.printStackTrace();
			return new JSONArray().fromObject("[]");
		}
	}

	public static boolean chooseQuestionOption(JSONArray choiceArray) {

		int result = 0;
		System.out.println("choiceArray:	" + choiceArray);
		for (int i = 0; i < choiceArray.size(); i++) {
			JSONObject choice = choiceArray.optJSONObject(i);
			int questionnaire_question_id = choice
					.optInt("questionnaire_question_id");
			int user_id = choice.optInt("user_id");
			String num = choice.optString("num");
			try {
				DatabaseConnection db = new DatabaseConnection();
				Connection conn = db.getConnection();
				//
				String sql = "INSERT INTO questionnaire_choice(questionnaire_question_id,user_id,num) VALUES (?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, questionnaire_question_id);
				pstmt.setInt(2, user_id);
				pstmt.setString(3, num);
				if (pstmt.executeUpdate() != 0) {
					result += 1;
				}

			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}
		if (result == choiceArray.size()) {
			return true;
		} else {
			return false;
		}

	}

}
