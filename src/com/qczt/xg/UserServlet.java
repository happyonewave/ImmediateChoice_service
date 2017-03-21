package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.qzct.server.Tools;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class User
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
		PrintWriter out = response.getWriter();
		String quizzer_name = request.getParameter("quizzer_name");
//		json测试
		

		
		
        JSONArray json =getMyPushFromDatabase("question", quizzer_name);
		out.print(json.toString());
	}

	JSONArray getMyPushFromDatabase(String listname, String quizzer_name ) {
		String sql = "select  * from " + listname + " where quizzer_name = '" + quizzer_name + "'";
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray json = Tools.getJsonByArguments(listname,rs);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
