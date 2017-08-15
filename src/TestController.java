package com.tsoft.web.Test;

import com.tsoft.domains.Test.entity.Test;
import com.tsoft.domains.Test.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Administrator on 2017/7/19.
 */
@Controller
public class TestController{

    @Autowired
    private TestService testService;

    @RequestMapping("/test")
    @ResponseBody
    public Test test(){
        Test t=testService.query();
        System.out.println(t);
        return t;
    }

    @RequestMapping("/index")
    @ResponseBody
    public ModelAndView index(){
        return new ModelAndView("index");
    }
}
