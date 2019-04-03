package com.qczt.xg;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TopicController {
    @ResponseBody
    @RequestMapping(value = "/test/{id}", method = RequestMethod.GET)
    public String test(@PathVariable  String id) {
        return "The id is " + id;
    }
}
