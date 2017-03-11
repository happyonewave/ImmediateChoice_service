package com.qczt.xg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("CommentServlet");

		String PUSH_COMMENT = "0";
		String msg = request.getParameter("msg");
		System.out.println("msg:" + msg);
		if (!(msg.equals(PUSH_COMMENT))) {
			String question_id = request.getParameter("question_id");
			System.out.println("question_id" + question_id);
			String json = Tools.getCommentByQuestionIdString(question_id);
			System.out.println("comment" + json);
			out.print(json);
		} else {
			String question_id = request.getParameter("question_id");
			String comment_content = request.getParameter("comment_content");
			String commenter_name = request.getParameter("commenter_name");
			String commenter_date = request.getParameter("commenter_date");
			String commenter_portrait_url = request
					.getParameter("commenter_portrait_url");
			DatabaseConnection db;
			try {
				db = new DatabaseConnection();
				Connection conn = db.getConnection();
				//
				String sql = "INSERT INTO comment(question_id,comment_content,commenter_date,commenter_name,commenter_portrait_url) VALUES (?,?,?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, question_id);
				pstmt.setString(2, comment_content);
				pstmt.setString(3, commenter_date);
				pstmt.setString(4, commenter_name);
				pstmt.setString(5, commenter_portrait_url);
				pstmt.executeUpdate();
				out.print("1");
			} catch (Exception e) {
				// out.print("0");
				e.printStackTrace();
			}

		}

	}

}
