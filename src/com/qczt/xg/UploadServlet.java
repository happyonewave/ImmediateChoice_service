package com.qczt.xg;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.tools.Tool;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class upload
 */
@WebServlet("/UploadServlet")
@MultipartConfig(
// location="/yjdata/www/www/ImmediateChoice_service/img"
// location = "D:\\Program Files\\apache-tomcat-7.0.56\\webapps\\Server\\img"
)
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int UPLOAD_IMAGE = 6;
	private static final int UPLOAD_VIDEO = 7;
	private DatabaseConnection db;
	private PrintWriter out;
	private String left_url;
	private String right_url;
	private String question_content;
	private String location;
	private String quizzer_name;
	private String portrait_url;
	private String group_id;

	// private String group_ids;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		out = response.getWriter();

		String msg = request.getParameter("msg");
		Part file_left = request.getPart("file_left");
		Part file_right = request.getPart("file_right");
		String question = request.getParameter("question");
		// group_ids = request.getParameter("group_ids");
		JSONObject jsonObject = JSONObject.fromObject(question);
		// JSONArray jsonArray = JSONArray.fromObject(group_ids);
		// group_ids = groupIdstoString(jsonArray);
		left_url = jsonObject.getString("left_url");
		right_url = jsonObject.getString("right_url");

		String file_left_path = Tools.getParent(request.getRealPath(request.getContextPath())) + File.separator + msg
				+ File.separator + Tools.getFileName(left_url);
		String file_right_path = Tools.getParent(request.getRealPath(request.getContextPath())) + File.separator + msg
				+ File.separator + Tools.getFileName(right_url);
		

		 file_left.write(file_left_path);
		 file_right.write(file_right_path);
		
		
//		 file_left
//		 .write("/yjdata/www/www/ImmediateChoice_service/"
//		 + msg + "/" + Tools.getFileName(left_url));
//		 file_right
//		 .write("/yjdata/www/www/ImmediateChoice_service/"
//		 + msg + "/" + Tools.getFileName(right_url));
		
//		file_left
//				.write("D:\\Program Files\\apache-tomcat-7.0.56\\webapps\\Server\\"
//						+ msg + "\\" + Tools.getFileName(left_url));
//		file_right
//				.write("D:\\Program Files\\apache-tomcat-7.0.56\\webapps\\Server\\"
//						+ msg + "\\" + Tools.getFileName(right_url));
//		

//		file_left
//				.write("/"+ msg + "/" + Tools.getFileName(left_url));
//		file_right
//				.write("/"+ msg + "/" + Tools.getFileName(right_url));

		question_content = jsonObject.getString("question_content");
		location = jsonObject.getString("location");
		quizzer_name = jsonObject.getString("quizzer_name");
		portrait_url = jsonObject.getString("portrait_url");
		group_id = jsonObject.getInt("group_id") + "";
		addToDatabase();

		// switch (Integer.parseInt(msg)) {
		// case UPLOAD_IMAGE:
		// Part image_left = request.getPart("image_left");
		// Part image_right = request.getPart("image_right");
		// String image_left_name = request.getParameter("image_left_name");
		// String image_right_name = request.getParameter("image_right_name");
		// image_left.write(image_left_name);
		// image_right.write(image_right_name);
		// String question_content = request.getParameter("question_content");
		// // String username = request.getParameter("username");
		// locations = request.getParameter("locations");
		// quizzer_name = request.getParameter("quizzer_name");
		// quizzer_portrait = request.getParameter("quizzer_portrait");
		// String url_img =
		// "http://123.207.31.213/ImmediateChoice_service/img/";
		// String image_left_path = url_img + image_left_name;
		// String image_right_path = url_img + image_right_name;
		// try {
		// db = new DatabaseConnection();
		// Connection conn = db.getConnection();
		// //
		// String sql =
		// "INSERT INTO question(image_left,image_right,question_content,quizzer_name,quizzer_portrait,locations) VALUES (?,?,?,?,?,?) ";
		// PreparedStatement pstmt = conn.prepareStatement(sql);
		// pstmt.setString(1, image_left_path);
		// pstmt.setString(2, image_right_path);
		// pstmt.setString(3, question_content);
		// pstmt.setString(4, quizzer_name);
		// pstmt.setString(5, quizzer_portrait);
		// pstmt.setString(6, locations);
		// pstmt.executeUpdate();
		// out.print("1");
		// } catch (Exception e) {
		// out.print("0");
		// e.printStackTrace();
		// }
		//
		// break;
		// case UPLOAD_VIDEO:
		// Part video_left = request.getPart("video_left");
		// Part video_right = request.getPart("video_right");
		// String question_video = request.getParameter("question_video");
		// JSONObject jsonObject = new JSONObject().fromObject(question_video);
		// String video_left_url = jsonObject.getString("video_left_url");
		// String video_right_url = jsonObject.getString("video_right_url");
		// video_left.write("D:\\Program Files\\apache-tomcat-7.0.56\\webapps\\Server\\video\\"
		// +Tools.getFileName(video_left_url));
		// video_right.write("D:\\Program Files\\apache-tomcat-7.0.56\\webapps\\Server\\video\\"
		// + Tools.getFileName(video_right_url));
		// String question_video_content = jsonObject
		// .getString("question_video_content");
		// locations = jsonObject.getString("locations");
		// quizzer_name = jsonObject.getString("quizzer_name");
		// quizzer_portrait = jsonObject.getString("quizzer_portrait");
		// try {
		// db = new DatabaseConnection();
		// Connection conn = db.getConnection();
		// //
		// String sql =
		// "INSERT INTO question_video(video_left_url,video_right_url,question_video_content,quizzer_name,quizzer_portrait,locations) VALUES (?,?,?,?,?,?) ";
		// PreparedStatement pstmt = conn.prepareStatement(sql);
		// pstmt.setString(1, video_left_url);
		// pstmt.setString(2, video_right_url);
		// pstmt.setString(3, question_video_content);
		// pstmt.setString(4, quizzer_name);
		// pstmt.setString(5, quizzer_portrait);
		// pstmt.setString(6, locations);
		// pstmt.executeUpdate();
		// out.print("1");
		// } catch (Exception e) {
		// out.print("0");
		// e.printStackTrace();
		// }
		// break;
		//
		// default:
		// break;
		// }
	}

	private String groupIdstoString(JSONArray jsonArray) {
		String str = "";
		for (int i = 0; i < jsonArray.size(); i++) {
			str += "," + jsonArray.getJSONObject(i).getString("group_id") + ",";
		}
		return str;
	}

	/**
	 * 添加到数据库
	 */
	private void addToDatabase() {

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			//
			String sql = "INSERT INTO question(left_url,right_url,question_content,quizzer_name,portrait_url,location,group_id) VALUES (?,?,?,?,?,?,?) ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, left_url);
			pstmt.setString(2, right_url);
			pstmt.setString(3, question_content);
			pstmt.setString(4, quizzer_name);
			pstmt.setString(5, portrait_url);
			pstmt.setString(6, location);
			pstmt.setString(7, group_id);
			// pstmt.setString(7, group_ids);
			pstmt.executeUpdate();
			out.print("1");
		} catch (Exception e) {
			out.print("0");
			e.printStackTrace();
		}
	}

}
