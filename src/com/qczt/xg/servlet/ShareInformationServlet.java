package com.qczt.xg.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qczt.xg.util.DatabaseConnection;

/**
 * Servlet implementation class ShareInformationServlet
 */
@WebServlet("/ShareInformationServlet")
public class ShareInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShareInformationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	PrintWriter out =response.getWriter();

	
	//获取信息
	String name = request.getParameter("name");


	String sql1 = "select  * from userin where name='" + name + "'";
	DatabaseConnection db;
	try {
		db = new DatabaseConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql1);
		if (rs.next()) {
			//查询成功
				String portrait_path= rs.getString(6);
			
			
			out.print(portrait_path);
			
		} else {
			//查询失败
			out.print("无此用户");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

    


	
	
	}

}
