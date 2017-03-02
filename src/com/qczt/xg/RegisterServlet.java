package com.qczt.xg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import net.qzct.server.DatabaseConnection;

/**
 * Servlet implementation class Register
 */
@WebServlet("/RegisterServlet")
@MultipartConfig(location = "/yjdata/www/www/ImmediateChoice_service/img")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone_number = request.getParameter("phone_number");
		String sex = request.getParameter("sex");
		
		Part portrait = request.getPart("portrait");
		String portrait_name = phone_number + ".jpg";
		portrait.write(portrait_name);
		
		String url_img = "http://123.207.31.213/ImmediateChoice_service/img/";
		String portrait_path = url_img + portrait_name;
		
		System.out.println(name + "/t" + sex);
		DatabaseConnection db;

		String sql1 = "select  * from userin where name='" + name + "'";

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
				out.print("0");
				System.out.println("注册失败");
				rs.close();
				stmt.close();
			} else {
				//
				String sql = "INSERT INTO userin(name,password,phone_number,sex,portrait_path) VALUES (?,?,?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, password);
				pstmt.setString(3, phone_number);
				pstmt.setString(4, sex);
				pstmt.setString(5, portrait_path);
				pstmt.executeUpdate();
				out.print("1");
				System.out.println("注册成功");
				rs.close();
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
