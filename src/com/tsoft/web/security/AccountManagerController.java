package com.tsoft.web.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by IntelliJ IDEA.
 * User: wilson.wei
 * Date: 2017/7/21
 * Time: 15:51
 */
@Controller
public class AccountManagerController {

    @RequestMapping(value = "tree", method = RequestMethod.GET)
    public ModelAndView tree(){
        return new ModelAndView("tree");
    }
}
