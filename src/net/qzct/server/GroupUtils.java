package net.qzct.server;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.qzct.server.Tools;

public class GroupUtils {

	/**
	 * 通过所有者Id查询GroupInfo
	 * 
	 * @param owner_id
	 * @return
	 */
	public static JSONArray getGroupInfo(int owner_id) {

		// SELECT group_id,name FROM group_info WHERE owner_id = 1

		String sql = "SELECT group_id,name FROM group_info WHERE owner_id = "
				+ owner_id;
		try {

			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray array = new JSONArray();
			JSONObject temp = new JSONObject();
			while (rs.next()) {
				int group_id = rs.getInt(1);
				String name = rs.getString(2);
				temp.clear();
				temp.put("group_id", group_id);
				temp.put("name", name);
				array.add(temp);
			}
			return array;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public static JSONArray getGroupIdsFromFriendId(int f_id) {

		// SELECT group_id,name FROM group_info WHERE owner_id = 1

		String sql = "SELECT group_id FROM friend WHERE f_id = "
				+ f_id;
		try {

			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray array = new JSONArray();
			JSONObject temp = new JSONObject();
			while (rs.next()) {
				int group_id = rs.getInt(1);
				temp.clear();
				temp.put("group_id", group_id);
				array.add(temp);
			}
			return array;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

		
		
		
	}
	
	/**
	 * 通过组Id查询GroupMembers
	 * 
	 * @param group_id
	 * @return
	 */
	public static JSONArray getGroupMembers(int group_id) {

		// SELECT f_id FROM friend WHERE group_id = 1
		String sql = "SELECT f_id FROM friend WHERE group_id = " + group_id;
		try {

			ResultSet rs = Tools.queryDatabase(sql);
			JSONArray array = new JSONArray();
			JSONObject temp = new JSONObject();
			while (rs.next()) {
				int f_id = rs.getInt(1);
				temp.clear();
				temp.put("f_id", f_id);
				array.add(temp);
			}
			return array;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

}
