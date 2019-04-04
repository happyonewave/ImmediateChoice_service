package com.qczt.xg.controller;

import com.qczt.xg.pojo.Topic;
import com.qczt.xg.util.ImageUtil;
import com.qczt.xg.util.Tools;
import com.qczt.xg.util.TopicUtils;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;


@Controller
@RequestMapping("topic")
public class TopicController {


    @ResponseBody
    @RequestMapping(value = "/test/{id}", method = RequestMethod.GET)
    public String test(@PathVariable String id) {
        return "The id is " + id;
    }

    @ResponseBody
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(HttpServletRequest request, @RequestParam("topic") String topic_str, MultipartFile img){
        JSONObject res = new JSONObject();
        if (topic_str != null && !img.isEmpty()) {
            Topic topic = Topic.jsonObjectToTotic(JSONObject.fromObject(topic_str));
            String file_path = Tools.getParent(request.getRealPath(request.getContextPath())) + File.separator + "image"
                    + File.separator + Tools.getFileName(topic.getTopic_img_url());
            try {
                ImageUtil.saveImg(img, file_path);
            } catch (IOException e) {
                e.printStackTrace();
                ImageUtil.deleteFile(file_path);

                res.put("code", TopicUtils.FAIL);
                return res.toString();
            }
            if (TopicUtils.addTopic(topic)) {
                res.put("code", TopicUtils.SUCCESS);
                return res.toString();
            }
        }
        res.put("code", TopicUtils.FAIL);
        return res.toString();
    }
}
