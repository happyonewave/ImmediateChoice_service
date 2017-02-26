package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;

public class RegisterServlet extends HttpServlet implements Servlet {

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

//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doPost(req, resp);
//	}
//	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.doPost(req, resp);
//		 Part part = req.getPart("file");
//		 part.write("name.jpg");
//	}
//	
	
	
	
	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
		OutputStream out = response.getOutputStream();
		
//		
//		 FileItemFactory factory = new DiskFileItemFactory();    
//         ServletFileUpload upload = new ServletFileUpload(factory);    
//         try {     
//             List items = upload.parseRequest(request);    
//             Iterator iter = items.iterator();    
//             while (iter.hasNext()) {    
//                 FileItem item = (FileItem) iter.next();    
//                 if (item.isFormField()) {    
//                     //普通文本信息处理    
//                     String paramName = item.getFieldName();    
//                     String paramValue = item.getString();    
//                     System.out.println(paramName + ":" + paramValue);    
//                 } else {    
//                     //上传文件信息处理    
//                     String fileName = item.getName();    
//                     byte[] data = item.get();    
//                     String filePath = "d:/ssssss.txt";    
//                     FileOutputStream fos = new FileOutputStream(filePath);    
//                     fos.write(data);    
//                     fos.close();    
//                 }    
//             }     
//         } catch (FileUploadException e) {    
//             e.printStackTrace();    
//         }    
//     }    
//		
//		
		
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone_number = request.getParameter("phone_number");
		String sex = request.getParameter("sex");
		name = new String(name.getBytes("iso8859-1"),"utf-8");
		password = new String(password.getBytes("iso8859-1"),"utf-8");
		phone_number = new String(phone_number.getBytes("iso8859-1"),"utf-8");
		sex = new String(sex.getBytes("iso8859-1"),"utf-8");
		System.out.println(name + "/t" + sex);
		DatabaseConnection db;
//		try {
		

		String sql1 = "select  * from userin where name='" + name + "'";

		try {db = new DatabaseConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql1);
		if (rs.next()) {
			out.write("0".getBytes("utf-8"));
			System.out.println("注册失败");
			rs.close();
			stmt.close();
		} else {
				// 
				String sql = "INSERT INTO userin(name,password,phone_number,sex) VALUES (?,?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, password);
				pstmt.setString(3, phone_number);
				pstmt.setString(4, sex);
				pstmt.executeUpdate();
			out.write("1".getBytes("utf-8"));
			System.out.println("注册成功");
			rs.close();
			stmt.close();
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		

		
//		json测试
//        JSONArray json =Tools.getJsonFromDatabase(out,"question");
//		out.write(json.toString().getBytes("utf-8"));

		
	}
}
