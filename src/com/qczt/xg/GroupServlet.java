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
import net.qzct.server.GroupUtils;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class Login
 */
@WebServlet("/GroupServlet")
public class GroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GroupServlet() {
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

		int owner_id = Integer.parseInt(request.getParameter("owner_id"));
		JSONArray groupInfoArray = GroupUtils.getGroupInfo(owner_id);
//		JSONArray groupRequest = new JSONArray();
//		for (int i = 0; i < groupInfoArray.size(); i++) {
//			JSONObject temp = groupInfoArray.getJSONObject(i);
//			int group_id = temp.getInt("group_id");
//			String name = temp.getString("name");
//			JSONArray groupMemberArray = GroupUtils.getGroupMembers(group_id);
//			temp.put("group_id", group_id);
//			temp.put("name", name);
//			temp.put("members", groupMemberArray);
//			groupRequest.add(temp);
//		}
		
		JSONArray groupRequest = new JSONArray();
		groupRequest.add(groupInfoArray);
		for (int i = 0; i < groupInfoArray.size(); i++) {
			JSONObject temp = groupInfoArray.getJSONObject(i);
			int group_id = temp.getInt("group_id");
			JSONArray groupMemberArray = GroupUtils.getGroupMembers(group_id);
			temp.put("members", groupMemberArray);
			groupRequest.add(temp);
		}
		out.print(groupRequest.toString());

	}

}
