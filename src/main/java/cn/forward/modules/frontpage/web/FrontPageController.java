package cn.forward.modules.frontpage.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 前台页面的跳转控制
 * @author Forward
 * @version 2018-01-14
 * */
@Controller
@RequestMapping(value = "${frontPath}")
public class FrontPageController {

    @RequestMapping(value = {"list", ""})
    public String list(Model model) {
        return "frontpage/frontindex";
    }
}
