package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class Login
 */
@WebServlet("/FriendServlet")
public class FriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FriendServlet() {
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
		PrintWriter out = response.getWriter();

		int user_id = Integer.parseInt(request.getParameter("user_id"));
		String f_id = request.getParameter("f_id");
		String update_type = request.getParameter("update_type");
		String requesStr = null;
		if (f_id != null && update_type == null) {
			if (Tools.friendIsExist(user_id, Integer.parseInt(f_id))) {
				requesStr = "他已是你的好友哦！";
			} else {
				Tools.addFriend(user_id, Integer.parseInt(f_id));
				requesStr = "加好友成功！";
			}
		} else if ("delete".equals(update_type)) {
			if (Tools.deleteFriend(Integer.parseInt(f_id))) {
				requesStr = "删除好友成功！";
			}else {
				requesStr = "删除好友失败";
			}
		} else {
			requesStr = Tools.getFriendInfo(user_id);
		}
		out.print(requesStr);

	}

}
