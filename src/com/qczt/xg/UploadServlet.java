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

public class UploadServlet extends HttpServlet implements Servlet {

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
		
		
		String image_left_path = request.getParameter("image_left_path");
		String image_right_path = request.getParameter("image_right_path");
		String question_content = request.getParameter("question_content");
		String username = request.getParameter("username");
		String locations = request.getParameter("locations");
		image_left_path = new String(image_left_path.getBytes("iso8859-1"),"utf-8");
		image_right_path = new String(image_right_path.getBytes("iso8859-1"),"utf-8");
		question_content = new String(question_content.getBytes("iso8859-1"),"utf-8");
		username = new String(username.getBytes("iso8859-1"),"utf-8");
		locations = new String(locations.getBytes("iso8859-1"),"utf-8");
		System.out.println(locations);
		DatabaseConnection db;
//		try {
			try {
				db = new DatabaseConnection();
				Connection conn = db.getConnection();
				// 
				String sql = "INSERT INTO question(image_left,image_right,question_content,quizzer_name,locations) VALUES (?,?,?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, image_left_path);
				pstmt.setString(2, image_right_path);
				pstmt.setString(3, question_content);
				pstmt.setString(4, username);
				pstmt.setString(5, locations);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		
//		json测试
//        JSONArray json =Tools.getJsonFromDatabase(out,"question");
//		out.write(json.toString().getBytes("utf-8"));

		
	}
}
