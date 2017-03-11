package com.qczt.xg;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("doPost");

		String msg = request.getParameter("msg");
		System.out.println("msg" + msg);
		int maxid = 0;
		String a;
		int startId = 0;
		String json = null;
		switch (msg) {
		case GET_MAX_ID:
			maxid = Tools.getQuestionMaxId();
			System.out.println("question_id" + maxid);
			out.print(maxid + "");
			break;
		case GET_QUESTION:
			a = request.getParameter("startId");
			System.out.println("startId" + a);
			startId = Integer.parseInt(a);
			json = Tools.getQuestionPaging(startId);
//			if (json != "-1") {
				System.out.println("fromStartid" + json.toString());
				out.print(json);
//			}else{
//				out.print("-1");
//			}
			break;
		case REFRESH_QUESTION:
			a = request.getParameter("startId");
			System.out.println("startId" + a);
			startId = Integer.parseInt(a);
			json = Tools.refreshQuestionPaging(startId);
//			if (json != "-1") {
				System.out.println("fromStartid" + json.toString());
				out.print(json);
//			}else{
//				System.out.println("已刷新为最新");
//			}
			break;

		default:
			break;
		}

	}

}
