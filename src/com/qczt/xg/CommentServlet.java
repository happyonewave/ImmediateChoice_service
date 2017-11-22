package com.qczt.xg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.tools.Tool;


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
		String CHOICE_ONE = "1";

		String msg = request.getParameter("msg");
		if (msg.equals(PUSH_COMMENT)) {
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
				addCommentCount(conn,Integer.parseInt(question_id));
			} catch (Exception e) {
				// out.print("0");
				e.printStackTrace();
			}
		} else if (msg.equals(CHOICE_ONE)) {
			int question_id = Integer.parseInt(request
					.getParameter("question_id"));
			int user_id = Integer.parseInt(request.getParameter("user_id"));
			String left_or_right = request.getParameter("left_or_right");
//			if (!Tools.choiceIsExisted(question_id, user_id, left_or_right)) {
				if (Tools.recordChoice(question_id, user_id, left_or_right)) {
					int percent = countPercent(question_id, left_or_right);
					out.print(percent + "");
				} else {
					System.out.println("选择失败");
				}

//			} else {
//				System.out.println("选择过了");
//			}

		} else {

			String question_id = request.getParameter("question_id");
			String json = Tools.getCommentByQuestionIdString(question_id);
			out.print(json);

		}

	}

	private void addCommentCount(Connection conn,int question_id) {
		// TODO Auto-generated method stub
		//
		String sql = "update question set comment_count=comment_count+1 where question_id = ?; ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, question_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private int countPercent(int question_id, String left_or_right) {
		int count_left = Tools.queryChoiceCount(question_id, "left");
		int count_right = Tools.queryChoiceCount(question_id, "right");
		int sum = count_left + count_right;
		int count = left_or_right.equals("left") ? count_left : count_right;
		System.out.println("count:" + count + "/sum:" + sum + "=" + count
				/ (double) sum);
		int percent = (int) ((count / (double) sum) / 0.01);
		return percent;
	}
}
