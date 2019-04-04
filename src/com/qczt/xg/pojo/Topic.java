package com.qczt.xg.pojo;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

public class Topic {
    int topic_id;
    String topic_title;
    String topic_img_url;

    public Topic() {
    }

    public Topic(int topic_id, String topic_title, String topic_img_url) {
        this.topic_id = topic_id;
        this.topic_title = topic_title;
        this.topic_img_url = topic_img_url;
    }

    public int getTopic_id() {
        return topic_id;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    public String getTopic_title() {
        return topic_title;
    }

    public void setTopic_title(String topic_title) {
        this.topic_title = topic_title;
    }

    public String getTopic_img_url() {
        return topic_img_url;
    }

    public void setTopic_img_url(String topic_img_url) {
        this.topic_img_url = topic_img_url;
    }

    public static Topic jsonObjectToTotic(JSONObject object) throws JSONException {
        int id = object.optInt("topic_id");
        String title = object.optString("topic_title");
        String img_url = object.optString("topic_img_url");
        return new Topic(id, title, img_url);
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topic_id=" + topic_id +
                ", topic_title='" + topic_title + '\'' +
                ", topic_img_url='" + topic_img_url + '\'' +
                '}';
    }
}
