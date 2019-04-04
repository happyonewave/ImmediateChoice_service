package com.qczt.xg.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.qczt.xg.pojo.Topic;
import net.sf.json.JSONArray;

public class TopicUtils {
    public final static int SUCCESS = 1;
    public final static int FAIL = 0;

    public static JSONArray getQuestionFromTopicId(int topic_id) {

        // SELECT group_id,name FROM group_info WHERE owner_id = 1

        String sql = "SELECT * FROM question WHERE topic_id = "
                + topic_id;
        try {

            ResultSet rs = Tools.queryDatabase(sql);
            JSONArray array = Tools.getJsonByArguments("question", rs);
            return array;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public static boolean addTopic(Topic topic) {
        String sql = "INSERT INTO topic(topic_title,topic_img_url) VALUES (?,?) ";

        DatabaseConnection db;
        try {
            db = new DatabaseConnection();
            Connection conn = db.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, topic.getTopic_title());
            pstmt.setString(2, topic.getTopic_img_url());
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

}
