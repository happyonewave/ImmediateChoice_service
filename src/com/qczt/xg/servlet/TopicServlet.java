package com.qczt.xg.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qczt.xg.util.Tools;
import com.qczt.xg.util.TopicUtils;
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
		String topic_id = request.getParameter("topic_id");
		JSONArray json = new JSONArray();
		if (user_id == null && topic_id == null) {
			json = JSONArray.fromObject(Tools.getJsonFromDatabase("topic"));
		} else if (topic_id == null) {
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
		} else {
			json = TopicUtils
					.getQuestionFromTopicId(Integer.parseInt(topic_id));
			System.out.println("topic_id:	" + topic_id);
		}
		System.out.println("输出：		" + json.toString());
		out.print(json.toString());

	}
}
