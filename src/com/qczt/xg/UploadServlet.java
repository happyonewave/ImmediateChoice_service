package com.qczt.xg;

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

import net.qzct.server.DatabaseConnection;

/**
 * Servlet implementation class upload
 */
@WebServlet("/UploadServlet")
@MultipartConfig(
		location="/yjdata/www/www/ImmediateChoice_service/img"
		)
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
			Part part = request.getPart("file");
//			part.write("sky.jpg");
			PrintWriter out = response.getWriter();
//			out.print("success");

			 Part image_left = request.getPart("image_left");
			 Part image_right = request.getPart("image_right");
				String image_left_name = request.getParameter("image_left_name");
				String image_right_name = request.getParameter("image_right_name");
			 image_left.write(image_left_name);
			 image_right.write(image_right_name);
			 
			String question_content = request.getParameter("question_content");
//			String username = request.getParameter("username");
			String locations = request.getParameter("locations");
			String quizzer_name = request.getParameter("quizzer_name");
			String url_img = "http://123.207.31.213/ImmediateChoice_service/img/";
			String image_left_path = url_img + image_left_name;
			String image_right_path = url_img + image_right_name;
			System.out.println(image_left_name);	
			System.out.println(locations);
			DatabaseConnection db;
				try {
					db = new DatabaseConnection();
					Connection conn = db.getConnection();
					// 
					String sql = "INSERT INTO question(image_left,image_right,question_content,quizzer_name,locations) VALUES (?,?,?,?,?) ";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, image_left_path);
					pstmt.setString(2, image_right_path);
					pstmt.setString(3, question_content);
					pstmt.setString(4, quizzer_name);
					pstmt.setString(5, locations);
					pstmt.executeUpdate();
					out.print("1");
				} catch (Exception e) {
					out.print("0");
					e.printStackTrace();
				}
		
	}

}
