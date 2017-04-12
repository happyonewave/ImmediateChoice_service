package com.qczt.xg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.qzct.server.DatabaseConnection;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/TopicServlet")
public class TopicServlet extends HttpServlet {
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

		String user_id = request.getParameter("user_id");
		System.out.println("\n topic user_id:" + user_id + "\n");
		JSONArray json = new JSONArray();
		if (user_id == null) {
			System.out.println("\nuser_id is null \n");
			json = JSONArray.fromObject(Tools.getJsonFromDatabase("topic"));
		} else {
			System.out.println("\nuser_id not is null \n");
			JSONArray topicJsonArray = Tools.getTopicMemberIds(Integer
					.parseInt(user_id));
			System.out.println("topicJsonArray:	" + topicJsonArray);
			for (int i = 0; i < topicJsonArray.size(); i++) {
				JSONObject temp = topicJsonArray.getJSONObject(i);
				JSONObject topicJsonObject = Tools.getTopicFromId(temp
						.getInt("topic_id"));
				json.add(topicJsonObject);
				System.out.println("topicJsonObject:	" + topicJsonObject);
			}
		}

		out.print(json.toString());

	}
}
