package com.qczt.xg.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qczt.xg.util.DatabaseConnection;
import com.qczt.xg.util.QuestionnaireUtils;
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

		String type = request.getParameter("type");
		String  outRequest = "";
		switch (type) {
		case "getQuestionnaire":
			String user_id = request.getParameter("user_id");
			String questionnaire_id = request.getParameter("questionnaire_id");
			if (user_id != null) {
				outRequest = QuestionnaireUtils.getQuestionnaireFromUserId(Integer.parseInt(user_id)).toString();
			}else {
				outRequest = QuestionnaireUtils.getQuestionnaireFromQuestionnaireId(Integer.parseInt(questionnaire_id)).toString();
			}
			
			break;
		case "getChartData":
			String questionnaire_question_id =request.getParameter("questionnaire_question_id");
			JSONArray dataArray = new JSONArray() ;
			if (questionnaire_question_id != null) {
				JSONArray options = QuestionnaireUtils.getQuestionOptions(Integer.parseInt(questionnaire_question_id));
						for (int i = 0; i < options.size(); i++) {
							JSONObject temp = options.getJSONObject(i);
							JSONObject item = new JSONObject();
						int	count = QuestionnaireUtils.getOptionChoiceCount(Integer.parseInt(questionnaire_question_id), temp.getString("num"));
						String content = temp.getString("content");
						item.put("value",count);
						item.put("name", content);
						dataArray.add(item);
						}
			}
			JSONObject chartData = new JSONObject();
			String question_title = QuestionnaireUtils.getQuestionTitle(Integer.parseInt(questionnaire_question_id));
			chartData.put("question_title", question_title);
			chartData.put("data", dataArray);
			outRequest = chartData.toString();
			break;
		case "pushQuestionnaire":
			String questionnaireObjectString = request.getParameter("questionnaireObject");
			JSONObject  questionnaireObject = new JSONObject().fromObject(questionnaireObjectString);
//			addQuestionnaire(questionnaireObject);
			outRequest = addQuestionnaire(questionnaireObject) + "";
			break;
		case "getQuestionnaireIds":
			outRequest = QuestionnaireUtils.getQuestionnaireIds().toString();
			break;
		case "chooseQuestionOption":
			String choice = request.getParameter("choice");
			System.out.println("choice:	" + choice);
			JSONArray choiceArray = new JSONArray().fromObject(choice);
			if (QuestionnaireUtils.chooseQuestionOption(choiceArray)) {
				outRequest = "1";
			}else {
				outRequest = "0";
			}
			
			break;


		default:
		}
		out.print(outRequest.toString());
		System.out.println(outRequest.toString());
	}

	
    public static int  addQuestionnaire(JSONObject object) {
        int user_id = object.optInt("user_id");
        String title = object.optString("title");
        String hint = object.optString("hint");
        int result = 0;
		try {
			DatabaseConnection db = new DatabaseConnection();
			Connection conn = db.getConnection();
			//
			String sql = "INSERT INTO questionnaire_info(user_id,title,hint) VALUES (?,?,?) ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
			pstmt.setString(2, title);
			pstmt.setString(3, hint);
			if (pstmt.executeUpdate() != 0) {
				result =  1;
			}
//			return 0;
			// out.print("1");
		} catch (Exception e) {
			// out.print("0");
			e.printStackTrace();
//			return 0;
		}
        JSONArray questionArray = object.optJSONArray("questionArray");
        for (int i = 0; i < questionArray.size(); i++) {
            addQuestion(questionArray.optJSONObject(i));
        }

        return result;

    }

	private static int addQuestion(JSONObject object) {
        String title = object.optString("title");
//        int questionnaire_question_id = object.optInt("questionnaire_question_id");
//        int questionnaire_id = object.optInt("questionnaire_id");
        int result = 0;
		try {
			DatabaseConnection db = new DatabaseConnection();
			Connection conn = db.getConnection();
			//
//			String sql = "INSERT INTO questionnaire_question(questionnaire_id,title) VALUES ("+"?"+","+"?"+") ";
			String sql = "INSERT INTO questionnaire_question(questionnaire_id,title) VALUES ("+"(SELECT MAX(questionnaire_id) FROM questionnaire_info)"+",'"+title+"') ";
//			PreparedStatement pstmt = conn.prepareStatement(sql);
			Statement stmt = conn.createStatement();
			System.out.println("addQuestion:	" + sql);
//			pstmt.setInt(1, questionnaire_id);
//			pstmt.setString(2, title);
			if (stmt.execute(sql)) {
				result = 1;
			}
			// out.print("1");
		} catch (Exception e) {
			// out.print("0");
			e.printStackTrace();
		}
        JSONArray optionArray = object.optJSONArray("optionArray");
        for (int i = 0; i < optionArray.size(); i++) {
            addOption(optionArray.optJSONObject(i));
        }

        return result;
		
	}

	private static int addOption(JSONObject object) {
        if (object != null) {
//            int option_id = object.optInt("option_id");
//            int questionnaire_question_id = object.optInt("questionnaire_question_id");
            String num = object.optString("num");
            String content = object.optString("content");

    		try {
    			DatabaseConnection db = new DatabaseConnection();
    			Connection conn = db.getConnection();
    			//
    			String sql = "INSERT INTO questionnaire_question_options(questionnaire_question_id,num,content) VALUES ((SELECT MAX(questionnaire_question_id) FROM questionnaire_question),'"+num+"','"+content+"') ";
    		System.out.println("addOption:	" + sql);
    			Statement stmt = conn.createStatement();
//    			pstmt.setInt(1, questionnaire_question_id);
//    			pstmt.setString(2, num);
//    			pstmt.setString(3, content);
    			if (stmt.execute(sql)) {
    				return 1;
    			}
    			return 0;
    			// out.print("1");
    		} catch (Exception e) {
    			// out.print("0");
    			e.printStackTrace();
    			return 0;
    		}
        }
		return 0;
		
		
	}
}
