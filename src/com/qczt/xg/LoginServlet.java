package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String password;
	private ResultSet rs;
	private PrintWriter out;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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

		// 登录
		name = request.getParameter("name");
		password = request.getParameter("password");

		String sql1 = "select  * from userin where name='" + name + "'"
				+ "and password='" + password + "'";
		DatabaseConnection db;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql1);
			if (rs.next()) {
				// 登录成功
				getUserInfo();
			} else {
				// 登录失败
				out.print("0");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void getUserInfo() throws Exception {
		JSONObject json = new JSONObject();
		int user_id = rs.getInt(1);
		String phone_number = rs.getString(4);
		String sex = rs.getString(5);
		String portrait_path = rs.getString(6);
		String token = rs.getString("token");
		System.out.println("直接取token: " + token);
		// if ("".equals(token)) {
		if (token == null || "".equals(token)) {
			token = Tools.getToken(user_id, name, portrait_path);
			System.out.println("请求token: " + token);
			Tools.updateToken(user_id, token);
		}
		json.put("user_id", user_id);
		json.put("name", name);
		json.put("password", password);
		json.put("phone_number", phone_number);
		json.put("sex", sex);
		json.put("portrait_path", portrait_path);
		json.put("token", token);
		out.print(json.toString());
	}

}
