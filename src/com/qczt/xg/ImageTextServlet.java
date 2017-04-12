package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

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

		final String GET_MAX_ID = "0";
		final String GET_QUESTION = "1";
		final String REFRESH_QUESTION = "2";
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		System.out.println("\nImageTextServlet");

		String msg = request.getParameter("msg");
		String type = request.getParameter("type");
		String user_id = request.getParameter("user_id");
		JSONArray group_idsArray = null;
		if (user_id.equals("0")) {
			 group_idsArray =  JSONArray.fromObject("[{\"group_id\":0}]");
		} else {
			group_idsArray = GroupUtils.getGroupIdsFromFriendId(Integer.parseInt(user_id));
		}
		int maxid = 0;
		String startTime = "";
		String endTime = "";
		String json = null;
		switch (msg) {
		case GET_MAX_ID:
			maxid = Tools.getMaxId("question");
			out.print(maxid + "");
			break;
		case GET_QUESTION:
		case REFRESH_QUESTION:
			startTime = request.getParameter("startTime");
			endTime = request.getParameter("endTime");
			System.out.println("startTime" + startTime);
			System.out.println("endTime" + endTime);
			if (msg.equals(REFRESH_QUESTION)) {
				json = Tools.getPaging(type, startTime, endTime, group_idsArray, 0);
			}
			json = Tools.getPaging(type, startTime, endTime, group_idsArray, 6);
//			System.out.println("image_text:" + json);
			out.print(json);
//			System.out.println("已执行输出");
			break;
		default:
			break;
		}

	}

}
