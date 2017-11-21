package net.qzct.server;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.logging.Handler;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import sun.applet.resources.MsgAppletViewer;
import sun.nio.cs.ext.ISCII91;
import sun.security.provider.MD5;
import sun.security.rsa.RSASignature.MD5withRSA;
import sun.tools.jar.resources.jar;

import com.sun.org.apache.bcel.internal.classfile.Code;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Tools {

	/**
	 * 请求token
	 * 
	 * @param startTime
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static String getToken(final int userId, final String name,
			final String portraitUri) {

		new Thread();
		FutureTask task = new FutureTask(new Callable<String>() {

			@Override
			public String call() throws Exception {
				String obj = null;
				HttpClient hc = new DefaultHttpClient();
				HttpPost httpPost = new HttpPost(
						"http://api.cn.ronghub.com/user/getToken.json");
				try {
					List<NameValuePair> parameters = new ArrayList<NameValuePair>();
					BasicNameValuePair pair1 = new BasicNameValuePair("userId",
							userId + "");
					BasicNameValuePair pair2 = new BasicNameValuePair("name",
							name);
					BasicNameValuePair pair3 = new BasicNameValuePair(
							"portraitUri", portraitUri);

					parameters.add(pair1);
					parameters.add(pair2);
					parameters.add(pair3);
					UrlEncodedFormEntity entity = new UrlEncodedFormEntity(
							parameters, "utf-8");

					String RY_APP_KEY = "x18ywvqfxlw3c";
					String RY_APP_SECRET = "ZFFu9fReLOmOYi";
					Random r = new Random();
					String Nonce = (r.nextInt(10000) + 10000) + "";
					String Timestamp = (System.currentTimeMillis() / 1000) + "";
					httpPost.addHeader("App-Key", RY_APP_KEY);
					httpPost.addHeader("Nonce", Nonce);
					httpPost.addHeader("Timestamp", Timestamp);
					httpPost.addHeader("Signature",
					// MD5.
							encryptToSHA(RY_APP_SECRET + Nonce + Timestamp));
					httpPost.setEntity(entity);
					HttpResponse hr = hc.execute(httpPost);
					int statusCode = hr.getStatusLine().getStatusCode();
					if (statusCode == 200) {
						InputStream is = hr.getEntity().getContent();
						String request = getTextFromStream(is);
						JSONObject object = JSONObject.fromObject(request);
						int code = object.getInt("code");
						if (code == 200) {
							obj = object.getString("token");
						} else {
							obj = code + "";
						}
					} else {
						obj = statusCode + "";
					}
				} catch (Exception e) {
					e.printStackTrace();
					obj = e.toString();
				}

				return obj;
			}
		});
		task.run();
		try {
			return (String) task.get();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ExecutionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

		// new Thread(new Runnable() {
		// @Override
		// public void run() {
		// // String obj = null;
		// HttpClient hc = new DefaultHttpClient();
		// HttpPost httpPost = new HttpPost(
		// "http://api.cn.ronghub.com/user/getToken.json");
		// try {
		// List<NameValuePair> parameters = new ArrayList<NameValuePair>();
		// BasicNameValuePair pair1 = new BasicNameValuePair("userId",
		// userId + "");
		// BasicNameValuePair pair2 = new BasicNameValuePair("name",
		// name);
		// BasicNameValuePair pair3 = new BasicNameValuePair(
		// "portraitUri", portraitUri);
		// parameters.add(pair1);
		// parameters.add(pair2);
		// parameters.add(pair3);
		// UrlEncodedFormEntity entity = new UrlEncodedFormEntity(
		// parameters, "utf-8");
		// httpPost.setEntity(entity);
		// HttpResponse hr = hc.execute(httpPost);
		// if (hr.getStatusLine().getStatusCode() == 200) {
		// InputStream is = hr.getEntity().getContent();
		// String request = getTextFromStream(is);
		// JSONObject object = JSONObject.fromObject(request);
		// int code = object.getInt("code");
		// if (code == 200) {
		// obj = object.getString("token");
		// } else {
		// obj = code + "";
		// }
		// } else {
		// obj = "0";
		// }
		// } catch (Exception e) {
		// e.printStackTrace();
		// obj = e.toString();
		// }
		//
		// }
		// }).start();
	}

	/**
	 * 进行SHA加密
	 * 
	 * @param info
	 *            要加密的信息
	 * @return String 加密后的字符串
	 */
	public static String encryptToSHA(String info) {
		byte[] digesta = null;
		try {
			// 得到一个SHA-1的消息摘要
			MessageDigest alga = MessageDigest.getInstance("SHA-1");
			// 添加要进行计算摘要的信息
			alga.update(info.getBytes());
			// 得到该摘要
			digesta = alga.digest();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		// 将摘要转为字符串
		String rs = byte2hex(digesta);
		return rs;
	}

	/**
	 * 将二进制转化为16进制字符串
	 * 
	 * @param b
	 *            二进制字节数组
	 * @return String
	 */
	public static String byte2hex(byte[] b) {
		String hs = "";
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
			if (stmp.length() == 1) {
				hs = hs + "0" + stmp;
			} else {
				hs = hs + stmp;
			}
		}
		return hs.toUpperCase();
	}

	public static String getTextFromStream(InputStream is) {
		int len = 0;
		byte[] b = new byte[1024];
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		try {
			while ((len = is.read(b)) != -1) {
				bos.write(b, 0, len);
			}
			String text = new String(bos.toByteArray());
			return text;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public static String getFriendInfo(int userId) {

		// select * from userin where user_id = 2
		JSONArray array = getFriendIds(userId);
		JSONArray outArray = new JSONArray();
		if (array != null) {
			for (int i = 0; i < array.size(); i++) {
				JSONObject temp = array.getJSONObject(i);
				int f_id = temp.getInt("f_id");
				temp = getUserInfo(f_id);
				outArray.add(temp);
			}
			return outArray.toString();
		} else {
			return "-1";
		}
	}

	public static JSONObject getUserInfo(int userId) {
		String sql = "select * from userin where user_id = " + userId;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONObject object = new JSONObject();
			if (rs.next()) {
				int user_id = rs.getInt("user_id");
				String name = rs.getString("name");
				// String password = rs.getString(3);
				String phone_number = rs.getString("phone_number");
				String sex = rs.getString("sex");
				String portrait_path = rs.getString("portrait_url");
				object.put("user_id", user_id);
				object.put("name", name);
				// json.put("password", password);
				object.put("phone_number", phone_number);
				object.put("sex", sex);
				object.put("portrait_path", portrait_path);
			}
			return object;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	/**
	 * 拿到好友的Id集合
	 * 
	 * @param userId
	 * @return
	 */
	public static JSONArray getFriendIds(int userId) {
		// select * from friend where user_id = 2
		String sql = "select * from friend where user_id = " + userId;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("friend", rs);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 拿到话题成员的Id集合
	 * 
	 * @param userId
	 * @return
	 */
	public static JSONArray getTopicMemberIds(int userId) {
		// select * from friend where user_id = 2
		String sql = "select topic_id from topic_members where user_id = "
				+ userId;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("topic_members", rs);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static JSONObject getTopicFromId(int topicId) {
		String sql = "select * from topic where topic_id = " + topicId;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONObject json = new JSONObject();
			if (rs.next()) {
				String topic_id = rs.getString(1);
				String topic_title = rs.getString(2);
				String topic_img_url = rs.getString(3);
				json.put("topic_id", topic_id);
				json.put("topic_title", topic_title);
				json.put("topic_img_url", topic_img_url);
			}
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	/**
	 * 获取文件名（有拓展名）
	 * 
	 * @param Path
	 * @return
	 */
	public static String getFileName(String Path) {
		int index = Path.lastIndexOf("/");
		if (index > 0) {
			Path = Path.substring(index + 1);
		}
		return Path;
	}

	public static String getJsonFromDatabase(String listname) {
		String sql = "select  * from " + listname;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments(listname, rs);
			return json.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return "-1";
		}
	}

	public static int getMaxId(String tableName) {
		// select * from question where id limit 5,2;
		String sql = "select  " + getIdName(tableName) + " from  " + tableName;
		ResultSet rs;
		int id = 0;
		try {
			rs = queryDatabase(sql);
			while (rs.next()) {
				id = rs.getInt(1);
			}
			return id;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}

	public static String getPostTime(String tableName) {
		// select * from question where id limit 5,2;
		String sql = "select  " + "post_time" + " from  " + tableName
				+ "order by post_time";
		ResultSet rs;
		String postTime = "";
		try {
			rs = queryDatabase(sql);
			while (rs.next()) {
				postTime = rs.getString(1);
			}
			return postTime;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return postTime;
	}

	public static String refreshPaging(String tableName, int startId) {
		// select * from question where id limit 5,2;
		// String sql = "select * from question where  id  limit " + a + "," +
		// b;
		int num = 4;

		String sql = "select * from " + tableName + " where  "
				+ getIdName(tableName) + "  limit " + startId + "," + num;
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments(tableName, rs);
			if (json.isEmpty()) {
				return "-1";
			} else {
				return json.toString();
			}
		} catch (Exception e) {
			return "-1";
		}
	}

	private static String getIdName(String tableName) {
		String idName = "";

		switch (tableName) {
		case "question":
			idName = "question_id";
			break;

		case "question_video":
			idName = "question_video_id";
			break;

		default:
			break;
		}
		return idName;
	}

	public static String getCommentByQuestionIdString(String question_id) {

		String sql = "select  * from comment where question_id='" + question_id
				+ "'";
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("comment", rs);
			return json.toString();
		} catch (Exception e) {
			return "-1";
		}

	}

	// public static String getPagingOld(String tableName, int startId) {
	//
	// // select * from question where id limit 5,2;
	// // String sql = "select * from question where  id  limit " + a + "," +
	// // b;
	//
	// // select * from question where push_time < "2017-03-20 21:25:53.0"
	// // order
	// // by push_time desc limit 0,6 ;
	//
	// int num = 6;
	// if (startId > 0 && startId < num) {
	// num = startId;
	// startId = 0;
	// } else if (startId >= num) {
	// startId -= num;
	// } else {
	// return "-1";
	// }
	// String sql = "select * from " + tableName + " where  "
	// + getIdName(tableName) + "  limit " + startId + "," + num;
	// try {
	// ResultSet rs = queryDatabase(sql);
	// JSONArray json = getJsonByArguments(tableName, rs);
	// return json.toString();
	// } catch (Exception e) {
	// return "-1";
	// }
	// }

	public static JSONArray searchQuestion(String keyword) {

		String sql = "SELECT * FROM question  WHERE question_content LIKE '%"
				+ keyword + "%'";
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray json = getJsonByArguments("question", rs);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String getPaging(int page, String type, String group_ids,
			int num) {
		// select * from question where group_id = 0 and push_time <
		// "2017-03-20 21:25:53.0"
		// order by push_time desc limit 0,6 ;
		String pagingPart = "";
		String typePart = "";
		if (num != 0) {
			// 1, 0,6 (i-1)*num,num
			// 2, 6,6
			// 3, 12,6
			pagingPart = " limit " + (page - 1) * num + "," + num;
		}
		if (type != null) {
			typePart = " and left_url like  '%/" + type + "/%'";
		}

		String sql = "select * from question where group_id in " + group_ids
				+ typePart + " order by question_id desc" + pagingPart;

		// String sql = "select * from question where group_id in " + group_ids
		// + " and left_url like  '%/" + type
		// + "/%' order by post_time desc" + pagingPart;
		System.out.println("sql:	" + sql);
		try {
			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray json = Tools.getJsonByArguments("question", rs);
			if (!json.isEmpty()) {
				return json.toString();
			} else {
				return "-1";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// public static String getPaging(String type,String group_ids, String
	// startTime,
	// String endTime, int num) {
	// // select * from question where group_id = 0 and push_time <
	// "2017-03-20 21:25:53.0"
	// // order by push_time desc limit 0,6 ;
	// String pagingPart = "";
	// if (!(num == 0)) {
	// pagingPart = " limit 0," + num;
	// }
	// String sql = "select * from question where group_id in " + group_ids +
	// " and left_url like  '%/" + type
	// + "/%' and post_time > '" + endTime + "' and post_time < '"
	// + startTime + "' order by post_time desc" + pagingPart;
	// System.out.println("sql:	" + sql);
	// try {
	// ResultSet rs = queryDatabase(sql);
	// JSONArray json = getJsonByArguments("question", rs);
	// if (!json.isEmpty()) {
	// return json.toString();
	// } else {
	// return "-1";
	// }
	// } catch (Exception e) {
	// e.printStackTrace();
	// return null;
	// }
	// }

	// public static String getPaging(String type, String startTime,
	// String endTime, JSONArray group_ids, int num) {
	//
	// // select * from question where group_ids like '%,"
	// // + group_id + ",%' and push_time <
	// // "2017-03-20 21:25:53.0"
	// // order by push_time desc limit 0,6 ;
	// String pagingPart = "";
	// if (num != 0) {
	// pagingPart = " limit 0," + num;
	// }
	// String sql = "select * from question where left_url like  '%/" + type
	// + "/%' and post_time > '" + endTime + "' and post_time < '"
	// + startTime + "' order by post_time desc" + pagingPart;
	// try {
	// ResultSet rs = queryDatabase(sql);
	// // JSONArray originalJson =
	// // JSONArray.fromObject(getJsonFromDatabase("question"));
	// // System.out.println("originalJson" + originalJson.toString());
	// // 全部投票
	// JSONArray allJson = getJsonByArguments("question", rs);
	// // JSONArray allJson =
	// // JSONArray.fromObject(getJsonFromDatabase("question"));
	// // //需要删除的投票
	// // JSONArray json = new JSONArray();
	// // // for (int i = 0; i < allJson.size(); i++) {
	// // // json.add(allJson.getJSONObject(i));
	// // // }
	// if (!allJson.isEmpty()) {
	// // // System.out.println("从数据库拿到的" + allJson.toString());
	// // for (int j = 0; j < allJson.size(); j++) {
	// // System.out.println("allJsonsize:	" + allJson.size());
	// // //遍历的投票
	// // JSONObject allTemp = allJson.getJSONObject(j);
	// // // System.out.println("j:	" + allTemp.getInt("question_id"));
	// // System.out.println("j:	" + j);
	// // //可读的群组
	// // JSONArray readableGroup_ids =
	// //
	// GroupUtils.getReadableGroupIdsFromQuestionId(allTemp.getInt("question_id"));
	// // System.out.println("readableGroup_ids:	" +
	// // readableGroup_ids.toString());
	// // if (readableGroup_ids.isEmpty()) {
	// // readableGroup_ids =
	// // JSONArray.fromObject("[{\"group_id\":0}]");
	// // }
	// // // readableGroup_ids
	// // for (int k = 0; k < readableGroup_ids.size(); k++) {
	// // // System.out.println("k: " + k);
	// // //遍历可读的群组
	// // JSONObject temp = readableGroup_ids.getJSONObject(k);
	// // for (int i = 0; i < group_ids.size(); i++) {
	// // // System.out.println("i: " + i);
	// // //遍历用户所在的群组
	// // JSONObject id_temp = group_ids.getJSONObject(i);
	// // System.out.println("用户所在的群组     :" +
	// // id_temp.getInt("group_id") + "可读的群组    :" +
	// // temp.getInt("group_id"));
	// // if (id_temp.getInt("group_id") == temp.getInt("group_id")) {
	// // // System.out.println("jsonsize: " + json.size() +"j:" +j);
	// // System.out.println("相等");
	// // System.out.println(allTemp.toString());
	// // json.add(allTemp);
	// // // if (json.contains(allTemp)) {
	// // // if (json.remove(allTemp)) {
	// // // System.out.println("移除成功");
	// // // }else {
	// // // System.out.println("移除失败");
	// // // if (json.remove(allTemp)) {
	// // // System.out.println("第二次移除成功");
	// // // }
	// // // System.out.println("第二次移除失败");
	// // // }
	// // // }
	// // }
	// // }
	// // }
	// // }
	// // // allJson = json;
	// // System.out.println("输出的：	");
	// // for (int l = 0; l < json.size(); l++) {
	// // JSONObject jsonObject = json.getJSONObject(l);
	// // System.out.print(jsonObject.getInt("question_id") + " ");
	// // }
	// // truncateTable("question");
	// // addToDatabase(json);
	// // rs = queryDatabase(sql);
	// // //输出投票
	// // json = getJsonByArguments("question", rs);
	// // truncateTable("question");
	// // addToDatabase(originalJson);
	// return allJson.toString();
	// } else {
	// return "-1";
	// }
	// } catch (Exception e) {
	// e.printStackTrace();
	// return "-1";
	// }
	//
	// }

	public static String truncateTable(String tableName) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT(choice_right_ids,',3,') where question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8

		// 判断是否存在记录 select * from question where choice_right_ids like '%,7,%'
		// and question_id = "2"
		DatabaseConnection db;

		String sql = "truncate table " + tableName + ";";

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			int request = stmt.executeUpdate(sql);
			if (request > 0) {
				stmt.close();
				return "1";
			} else {
				stmt.close();
				return "0";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}

	}

	/**
	 * 添加到数据库
	 */
	public static void addToDatabase(JSONArray json) {

		for (int i = 0; i < json.size(); i++) {
			JSONObject temp = json.getJSONObject(i);
			try {
				DatabaseConnection db = new DatabaseConnection();
				Connection conn = db.getConnection();
				//
				String sql = "INSERT INTO question(left_url,right_url,question_content,quizzer_name,portrait_url,location) VALUES (?,?,?,?,?,?) ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, temp.getString("left_url"));
				pstmt.setString(2, temp.getString("right_url"));
				pstmt.setString(3, temp.getString("question_content"));
				pstmt.setString(4, temp.getString("quizzer_name"));
				pstmt.setString(5, temp.getString("portrait_url"));
				pstmt.setString(6, temp.getString("location"));
				// pstmt.setString(7, group_ids);
				pstmt.executeUpdate();
				// out.print("1");
			} catch (Exception e) {
				// out.print("0");
				e.printStackTrace();
			}
		}
	}

	/**
	 * 查询记录数量
	 * 
	 * @param question_id
	 * @param left_or_right
	 * @return
	 */
	public static int queryChoiceCount(int question_id, String left_or_right) {

		// 查询记录数量 SELECT ((LENGTH(`choice_right_ids`) -
		// LENGTH(REPLACE(`choice_right_ids`,',', ''))) / LENGTH(','))/2 AS
		// 'count' FROM question where question_id =8;
		int count;
		DatabaseConnection db;

		String sql = "  SELECT ((LENGTH(`choice_"
				+ left_or_right
				+ "_ids`) - LENGTH(REPLACE(`choice_"
				+ left_or_right
				+ "_ids`,',', ''))) / LENGTH(','))/2 AS 'count'   FROM question where question_id ="
				+ question_id;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt(1);
				// System.out.println(left_or_right + "数量：" + count);
				rs.close();
				stmt.close();
				return count;
			} else {
				rs.close();
				stmt.close();
				return -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

	}

	/**
	 * 判断是否已选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static boolean choiceIsExisted(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT(choice_right_ids,',3,') where question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8

		// 判断是否存在记录 select * from question where choice_right_ids like '%,7,%'
		// and question_id = 2
		DatabaseConnection db;

		String sql = "select * from question where choice_" + left_or_right
				+ "_ids like '%," + user_id + ",%' and question_id = "
				+ question_id;

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				rs.close();
				stmt.close();
				return true;
			} else {
				rs.close();
				stmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	/**
	 * 删除选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static String deleteChoice(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT(choice_right_ids,',3,') where question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8

		// 判断是否存在记录 select * from question where choice_right_ids like '%,7,%'
		// and question_id = "2"
		DatabaseConnection db;

		String sql = "update question set choice_" + left_or_right
				+ "_ids = replace(choice_" + left_or_right + "_ids,',"
				+ user_id + ",','') where question_id=" + question_id;

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			int request = stmt.executeUpdate(sql);
			if (request > 0) {
				stmt.close();
				return "1";
			} else {
				stmt.close();
				return "0";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}

	}

	/**
	 * 记录选择
	 * 
	 * @param question_id
	 * @param user_id
	 * @param left_or_right
	 * @return
	 */
	public static boolean recordChoice(int question_id, int user_id,
			String left_or_right) {
		// 存放记录 update question set
		// choice_right_ids=CONCAT_WS("",choice_right_ids,',3,') where
		// question_id=8

		// 删除记录 update question set choice_right_ids =
		// replace(choice_right_ids,',7,','') where question_id=8
		DatabaseConnection db;

		String sql = "update question set choice_" + left_or_right
				+ "_ids=CONCAT_WS('',choice_" + left_or_right + "_ids,',"
				+ user_id + ",') where question_id=" + question_id;
		System.out.println("sql" + sql);
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			int request = stmt.executeUpdate(sql);
			if (request > 0) {
				stmt.close();
				return true;
			} else {
				stmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public static JSONArray getJsonByArguments(String listname, ResultSet rs)
			throws SQLException {
		JSONArray jsonArray = new JSONArray();
		while (rs.next()) {
			JSONObject json = new JSONObject();
			String quizzer_name;
			String portrait_url;
			int share_count;
			int comment_count;
			String comment;
			String post_time;
			String group_ids;
			String location;
			SimpleDateFormat format = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			switch (listname) {
			case "question":
				int question_id = rs.getInt("question_id");
				int group_id = rs.getInt("group_id");
				int topic_id = rs.getInt("topic_id");
				String question_content = rs.getString("question_content");
				String left_url = rs.getString("left_url");
				String right_url = rs.getString("right_url");
				quizzer_name = rs.getString("quizzer_name");
				portrait_url = rs.getString("portrait_url");
				share_count = rs.getInt("share_count");
				comment_count = rs.getInt("comment_count");
				comment = rs.getString("comment");
				location = rs.getString("location");
				// group_ids = rs.getString("group_ids");
				// post_time = format.format(rs.getDate(13));
				post_time = rs.getString(13);
				json.put("question_id", question_id);
				json.put("group_id", group_id);
				json.put("topic_id", topic_id);
				json.put("question_content", question_content);
				json.put("left_url", left_url);
				json.put("right_url", right_url);
				json.put("quizzer_name", quizzer_name);
				json.put("portrait_url", portrait_url);
				json.put("share_count", share_count);
				json.put("comment_count", comment_count);
				json.put("comment", comment);
				json.put("post_time", post_time);
				json.put("location", location);
				// json.put("group_ids", group_ids);
				jsonArray.add(json);
				break;

			case "topic_members":
				int topic_id1 = rs.getInt(1);
				json.put("topic_id", topic_id1);
				jsonArray.add(json);
				break;

			case "comment":
				String comment_content = rs.getString(2);
				String commenter_date = rs.getString(3);
				String commenter_name = rs.getString(4);
				String commenter_portrait_url = rs.getString(5);
				json.put("comment_content", comment_content);
				json.put("commenter_date", commenter_date);
				json.put("commenter_name", commenter_name);
				json.put("commenter_portrait_url", commenter_portrait_url);
				jsonArray.add(json);
				break;

			case "topic":
				int topic_id2 = rs.getInt(1);
				String topic_title = rs.getString(2);
				String topic_img_url = rs.getString(3);
				json.put("topic_id", topic_id2);
				json.put("topic_title", topic_title);
				json.put("topic_img_url", topic_img_url);
				jsonArray.add(json);
				break;

			case "userin":
				int user_id = rs.getInt("user_id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				String phone_number = rs.getString("phone_number");
				String sex = rs.getString("sex");
				String portrait_path = rs.getString("portrait_url");
				json.put("user_id", user_id);
				json.put("name", name);
				// json.put("password", password);
				json.put("phone_number", phone_number);
				json.put("sex", sex);
				json.put("portrait_path", portrait_path);
				jsonArray.add(json);
				break;

			case "questionnaire_question_options":
				int option_id = rs.getInt("option_id");
				int questionnaire_question_id = rs
						.getInt("questionnaire_question_id");
				String num = rs.getString("num");
				String content = rs.getString("content");
				json.put("option_id", option_id);
				json.put("num", num);
				json.put("questionnaire_question_id", questionnaire_question_id);
				json.put("content", content);
				jsonArray.add(json);
				break;

			case "questionnaire_question":
				int questionnaire_question_id1 = rs
						.getInt("questionnaire_question_id");
				int questionnaire_id = rs.getInt("questionnaire_id");
				String title = rs.getString("title");
				json.put("questionnaire_question_id",
						questionnaire_question_id1);
				json.put("questionnaire_id", questionnaire_id);
				json.put("title", title);
				jsonArray.add(json);
				break;

			case "friend":
				int f_id = rs.getInt("f_id");
				json.put("f_id", f_id);
				jsonArray.add(json);
				break;

			default:
				break;
			}
		}
		// System.out.println(jsonArray.toString());
		return jsonArray;
	}

	public static ResultSet queryDatabase(String sql) throws Exception {
		DatabaseConnection db = new DatabaseConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		return rs;
	}

	public static int updateToken(int user_id, String token) throws Exception {

		// UPDATE userin SET token="6" where user_id = 3
		String sql = "UPDATE userin SET token='" + token + "' where user_id = "
				+ user_id;
		DatabaseConnection db = new DatabaseConnection();
		Connection conn = db.getConnection();
		Statement stmt = conn.createStatement();
		int resquet = stmt.executeUpdate(sql);
		stmt.close();
		return resquet;
	}

	public static JSONArray searchUser(String userId) {

		String sql = "select * from userin where user_id  LIKE '%" + userId
				+ "%'";
		try {
			ResultSet rs = queryDatabase(sql);
			JSONArray jsonArray = getJsonByArguments("userin", rs);
			// JSONObject object = new JSONObject();
			// JSONArray jsonArray = new JSONArray();
			// while(rs.next()) {
			// int user_id = rs.getInt(1);
			// String name = rs.getString(2);
			// // String phone_number = rs.getString(4);
			// String sex = rs.getString(5);
			// String portrait_path = rs.getString(6);
			// object.put("user_id", user_id);
			// object.put("name", name);
			// // object.put("phone_number", phone_number);
			// object.put("sex", sex);
			// object.put("portrait_path", portrait_path);
			// jsonArray.add(object);
			// }
			return jsonArray;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean friendIsExist(int userId, int f_id) {
		DatabaseConnection db;

		String sql1 = "select  * from friend where f_id='" + f_id + "' and "
				+ "user_id = " + userId;

		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
				rs.close();
				stmt.close();
				return true;
			} else {
				rs.close();
				stmt.close();
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	public static boolean addFriend(int user_id, int f_id) {
		String sql = "INSERT INTO friend(user_id,f_id) VALUES (?,?) ";

		DatabaseConnection db;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id + "");
			pstmt.setString(2, f_id + "");
			if (pstmt.executeUpdate() != 0) {
				pstmt.close();
				return true;
			} else {
				pstmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean deleteFriend(int f_id) {
		String sql = "DELETE FROM friend WHERE f_id = " + f_id;

		DatabaseConnection db;
		try {
			db = new DatabaseConnection();
			Connection conn = db.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			if (pstmt.executeUpdate() != 0) {
				pstmt.close();
				return true;
			} else {
				pstmt.close();
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static  String getParent(String sub) {
		int lastIndex;
		if (sub.contains("http")) {
			lastIndex = sub.lastIndexOf("/");
		} else {
			// lastIndex = sub.lastIndexOf("\\");
			lastIndex = sub.lastIndexOf(File.separator);

		}
		return sub.substring(0, lastIndex);

	}
}
