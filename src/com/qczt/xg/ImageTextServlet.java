package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.qzct.server.GroupUtils;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class ImageText
 */
@WebServlet("/ImageTextServlet")
public class ImageTextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageTextServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// final String GET_MAX_ID = "0";
		// final String GET_QUESTION = "1";
		// final String REFRESH_QUESTION = "2";

		response.setHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("\nImageTextServlet");

		String page = request.getParameter("page");
		String type = request.getParameter("type");
		String user_id = request.getParameter("user_id");
		System.out.println("page:	" + page);
		System.out.println("type:	" + type);
		System.out.println("user_id:	" + user_id);

		String group_ids = null;
		String endTime;
		if (user_id == null || user_id.isEmpty()) {
			group_ids = "(0)";
			// endTime = "1970-01-01 08:00:00";
		} else {
			group_ids = GroupUtils.getGroupIdsFromFriendId(Integer
					.parseInt(user_id));
		}

		String json = Tools.getPaging(Integer.parseInt(page), type, group_ids,
				6);
		// out.print("group_ids:	" + group_ids);
		out.print(json);
		// String msg = request.getParameter("msg");
		// String type = request.getParameter("type");
		// String user_id = request.getParameter("user_id");
		// String group_ids = null;
		// if (user_id.equals("0")) {
		// group_ids= "(0)";
		// } else {
		// group_ids =
		// GroupUtils.getGroupIdsFromFriendId(Integer.parseInt(user_id));
		// }
		// int maxid = 0;
		// String startTime = "";
		// String endTime = "";
		// String json = null;
		// switch (msg) {
		// case GET_MAX_ID:
		// maxid = Tools.getMaxId("question");
		// out.print(maxid + "");
		// break;
		// case GET_QUESTION:
		// case REFRESH_QUESTION:
		// startTime = request.getParameter("startTime");
		// endTime = request.getParameter("endTime");
		// System.out.println("startTime" + startTime);
		// System.out.println("endTime" + endTime);
		// if (msg.equals(REFRESH_QUESTION)) {
		// json = Tools.getPaging(type,group_ids, startTime, endTime, 0);
		// break;
		// }
		// json = Tools.getPaging(type,group_ids, startTime, endTime, 6);
		// System.out.println("image_text:" + json);
		// out.print(json);
		// // System.out.println("已执行输出");
		// break;
		// default:
		// break;
		// }

	}

}
