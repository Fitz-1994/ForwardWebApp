package cn.forward.modules.sys.web;

import cn.forward.common.system.SystemCommon;
import cn.forward.modules.user.entity.User;
import cn.forward.modules.user.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author Forward
 * @version 2017-12-27
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    /**
     * 首页跳转
     * */
    @RequestMapping(value = "${adminPath}")
    public String index(User user, String message , Model model, HttpSession httpSession) {
        String sessionName = "user";
        if (httpSession.getAttribute( sessionName)!=null){
            model.addAttribute("loginStatus",true);
            return "user/loginIndex";
        }
        if (user == null) {
            user = new User();
        }

        model.addAttribute("message",message);
        model.addAttribute("user", user);
        return "index";
    }


    /**
     * 用户登录
     * */
    @RequestMapping(value = "${adminPath}/login")
    public String login(User user, Model model, HttpSession httpSession) {
        Boolean loginStatus = false;
        String message = "";
        //如果账号密码都不为空，就做登录验证。
        if (StringUtils.isNotEmpty(user.getAccount()) && StringUtils.isNotEmpty(user.getPassword())) {
            loginStatus = userService.loginValidate(user.getAccount(),user.getPassword());
        }else {
            //账号密码为空时，返回登录界面，并提示账号密码为空
            message = "账号或密码为空，请重新输入";
            model.addAttribute("account",user.getAccount());
            model.addAttribute("message",message);

            return "redirect:"+ SystemCommon.getProperties("forwardweb").getString("adminPath");
        }
        if (loginStatus){
            message = "登录成功！";
            User userLogin = userService.getUserByAccount(user.getAccount());
            httpSession.setAttribute("user",userLogin);
            model.addAttribute("user",userLogin);
        }else {
            //登录失败时，返回页面，
            message = "账号或密码错误,请重新输入！";
            model.addAttribute("message",message);
            return "redirect:"+SystemCommon.getProperties("forwardweb").getString("adminPath");
        }
        model.addAttribute("message",message);
        model.addAttribute("loginStatus",loginStatus);
        return "user/loginIndex";
    }
}
