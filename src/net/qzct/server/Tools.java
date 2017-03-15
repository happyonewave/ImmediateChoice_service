package net.qzct.server;

import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Tools {

	public static String getJsonFromDatabase(String listname) {
		String sql = "select  * from " + listname;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments(listname, rs);
			return json.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return "-1";
		}
	}

	public static int getQuestionMaxId() {
		// select * from question where id limit 5,2;
		String sql = "select  question_id from  question";
		ResultSet rs;
		int id = 0;
		try {
			rs = queryDatabase(sql);
			while (rs.next()) {
				id = rs.getInt(1);
			}
			return id;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}

	public static String refreshQuestionPaging(int startId) {
		// select * from question where id limit 5,2;
		// String sql = "select * from question where  id  limit " + a + "," +
		// b;
		int num = 4;

		String sql = "select * from question where  question_id  limit "
				+ startId + "," + num;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("question", rs);
			if (json.isEmpty()) {
				return "-1";
			} else {
				return json.toString();
			}
		} catch (Exception e) {
			return "-1";
		}
	}

	public static String getCommentByQuestionIdString(String question_id) {

		String sql = "select  * from comment where question_id='" + question_id
				+ "'";
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("comment", rs);
			return json.toString();
		} catch (Exception e) {
			return "-1";
		}

	}

	public static String getQuestionPaging(int startId) {
		// select * from question where id limit 5,2;
		// String sql = "select * from question where  id  limit " + a + "," +
		// b;
		int num = 6;
		if (startId > 0 && startId < num) {
			num = startId;
			startId = 0;
		} else if (startId >= num) {
			startId -= num;
		} else {
			return "-1";
		}

		String sql = "select * from question where  question_id  limit "
				+ startId + "," + num;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("question", rs);
			return json.toString();
		} catch (Exception e) {
			return "-1";
		}
	}

	/**
	 * 查询记录数量
	 * 
	 * @param question_id
	 * @param left_or_right
	 * @return
	 */
	public static int queryChoiceCount(int question_id, String left_or_right) {

		// 查询记录数量 SELECT ((LENGTH(`choice_right_ids`) -
		// LENGTH(REPLACE(`choice_right_ids`,',', ''))) / LENGTH(','))/2 AS
		// 'count' FROM question where question_id =8;
		int count;
		DatabaseConnection db;

		String sql = "  SELECT ((LENGTH(`choice_"
				+ left_or_right
				+ "_ids`) - LENGTH(REPLACE(`choice_"
				+ left_or_right
				+ "_ids`,',', ''))) / LENGTH(','))/2 AS 'count'   FROM question where question_id ="
				+ question_id;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt(1);
				System.out.println(left_or_right + "数量：" + count);
				rs.close();
				stmt.close();
				return count;
			} else {
				rs.close();
				stmt.close();
				return -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

	}

	/**
	 * 判断是否已选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static boolean choiceIsExisted(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT(choice_right_ids,',3,') where question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8

		// 判断是否存在记录 select * from question where choice_right_ids like '%,7,%'
		// and question_id = 2
		DatabaseConnection db;

		String sql = "select * from question where choice_" + left_or_right
				+ "_ids like '%," + user_id + ",%' and question_id = "
				+ question_id;

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				rs.close();
				stmt.close();
				return true;
			} else {
				rs.close();
				stmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	/**
	 * 删除选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static String deleteChoice(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT(choice_right_ids,',3,') where question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8

		// 判断是否存在记录 select * from question where choice_right_ids like '%,7,%'
		// and question_id = "2"
		DatabaseConnection db;

		String sql = "update question set choice_" + left_or_right
				+ "_ids = replace(choice_" + left_or_right + "_ids,',"
				+ user_id + ",','') where question_id=" + question_id;

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			int request = stmt.executeUpdate(sql);
			if (request > 0) {
				stmt.close();
				return "1";
			} else {
				stmt.close();
				return "0";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}

	}

	/**
	 * 记录选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static boolean recordChoice(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT_WS("",choice_right_ids,',3,') where
		// question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8
		DatabaseConnection db;

		String sql = "update question set choice_" + left_or_right
				+ "_ids=CONCAT_WS('',choice_" + left_or_right + "_ids,',"
				+ user_id + ",') where question_id=" + question_id;
		System.out.println("sql" + sql);
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			int request = stmt.executeUpdate(sql);
			if (request > 0) {
				stmt.close();
				return true;
			} else {
				stmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public static JSONArray getJsonByArguments(String listname, ResultSet rs)
			throws SQLException {
		JSONArray jsonArray = new JSONArray();
		while (rs.next()) {
			JSONObject json = new JSONObject();
			switch (listname) {

			case "question":
				int question_id = rs.getInt(1);
				String question_content = rs.getString(2);
				String image_left = rs.getString(3);
				String image_right = rs.getString(4);
				String quizzer_name = rs.getString(5);
				String quizzer_portrait = rs.getString(6);
				int share_count = rs.getInt(7);
				int comment_count = rs.getInt(8);
				String comment = rs.getString(9);
				json.put("question_id", question_id);
				json.put("question_content", question_content);
				json.put("image_left", image_left);
				json.put("image_right", image_right);
				json.put("quizzer_name", quizzer_name);
				json.put("quizzer_portrait", quizzer_portrait);
				json.put("share_count", share_count);
				json.put("comment_count", comment_count);
				json.put("comment", comment);
				jsonArray.add(json);
				break;

			case "comment":
				String comment_content = rs.getString(2);
				String commenter_date = rs.getString(3);
				String commenter_name = rs.getString(4);
				String commenter_portrait_url = rs.getString(5);
				json.put("comment_content", comment_content);
				json.put("commenter_date", commenter_date);
				json.put("commenter_name", commenter_name);
				json.put("commenter_portrait_url", commenter_portrait_url);
				jsonArray.add(json);
				break;

			case "topic":
				String topic_title = rs.getString(2);
				String topic_img_url = rs.getString(3);
				json.put("topic_title", topic_title);
				json.put("topic_img_url", topic_img_url);
				jsonArray.add(json);
				break;

			case "userin":
				int user_id = rs.getInt(1);
				String name = rs.getString(2);
				String password = rs.getString(3);
				String phone_number = rs.getString(4);
				String sex = rs.getString(5);
				String portrait_path = rs.getString(6);
				json.put("user_id", user_id);
				json.put("name", name);
				json.put("password", password);
				json.put("phone_number", phone_number);
				json.put("sex", sex);
				json.put("portrait_path", portrait_path);
				jsonArray.add(json);
				break;

			default:
				break;
			}
		}
		System.out.println(jsonArray.toString());
		return jsonArray;
	}

	public static ResultSet queryDatabase(String sql) throws Exception {
		DatabaseConnection db = new DatabaseConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}
}
