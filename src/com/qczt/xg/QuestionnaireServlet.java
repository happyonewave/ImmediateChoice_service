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
import net.qzct.server.QuestionnaireUtils;
import net.qzct.server.Tools;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class ImageText
 */
@WebServlet("/QuestionnaireServlet")
public class QuestionnaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public QuestionnaireServlet() {
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


		response.setHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String questionnaire_quuestion_id =request.getParameter("questionnaire_quuestion_id");
		JSONArray dataArray = new JSONArray() ;
		if (questionnaire_quuestion_id != null) {
			JSONArray options = QuestionnaireUtils.getQuestionOptions(Integer.parseInt(questionnaire_quuestion_id));
					for (int i = 0; i < options.size(); i++) {
						JSONObject temp = options.getJSONObject(i);
						JSONObject item = new JSONObject();
					int	count = QuestionnaireUtils.getOptionChoiceCount(Integer.parseInt(questionnaire_quuestion_id), temp.getString("num"));
					String content = temp.getString("content");
					item.put("value",count);
					item.put("name", content);
					dataArray.add(item);
					}
		}
		String question_title = QuestionnaireUtils.getQuestionTitle(Integer.parseInt(questionnaire_quuestion_id));
		JSONObject outRequest = new  JSONObject();
		outRequest.put("question_title", question_title);
		outRequest.put("data", dataArray);
		out.print(outRequest.toString());
		System.out.println(outRequest.toString());
	}

}
