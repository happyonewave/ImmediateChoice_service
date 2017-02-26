package net.qzct.server;

import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Tools {
	public static JSONArray getJsonFromDatabase(OutputStream out ,String listname ) {
		String sql = "select  * from " + listname;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments(listname,rs);
			System.out.println(json.toString());
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static JSONArray getJsonByArguments(String listname,ResultSet rs) throws SQLException {
		JSONArray jsonArray = new JSONArray();
		while (rs.next()) {
			JSONObject json = new JSONObject();
			switch (listname) {
			case "info":
				String student= rs.getString(2);
				String date= rs.getString(3);
				String imageurl= rs.getString(4);
				json.put("student", student);
				json.put("date", date);
				json.put("imageurl", imageurl);
				jsonArray.add(json);
				break;
				
			case "conversation":
				String content= rs.getString(2);
				String portraiturl= rs.getString(3);
				String addresser= rs.getString(4);
				String addressee= rs.getString(5);
				json.put("content", content);
				json.put("portraiturl", portraiturl);
				json.put("addresser", addresser);
				json.put("addressee", addressee);
				jsonArray.add(json);
				break;
				
			case "question":
				String question_content= rs.getString(2);
				String image_left= rs.getString(3);
				String image_right= rs.getString(4);
				String quizzer_name= rs.getString(5);
				int share_count= rs.getInt(6);
				int comment_count= rs.getInt(7);
				String comment= rs.getString(8);
				json.put("question_content", question_content);
				json.put("image_left", image_left);
				json.put("image_right", image_right);
				json.put("quizzer_name", quizzer_name);
				json.put("share_count", share_count);
				json.put("comment_count", comment_count);
				json.put("comment", comment);
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
