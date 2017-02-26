package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class LoginServlet implements Servlet {


	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		
		//登录
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		name = new String(name.getBytes("iso8859-1"),"utf-8");
		password = new String(password.getBytes("iso8859-1"),"utf-8");
		
		System.out.println(name + "\t" + password);
		
		OutputStream out = response.getOutputStream();

		String sql1 = "select  * from userin where name='" + name + "'" + "and password='" + password + "'";
		DatabaseConnection db;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
				//登录成功
				out.write("1".getBytes("utf-8"));
				System.out.println("登录成功");
			} else {
				//登录失败
				out.write("0".getBytes("utf-8"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

        
	}



}
