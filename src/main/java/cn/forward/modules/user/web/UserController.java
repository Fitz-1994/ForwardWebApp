package cn.forward.modules.user.web;

import cn.forward.modules.user.dao.UserDao;
import cn.forward.modules.user.entity.User;
import cn.forward.modules.user.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Forward
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserDao userDao;


    /**
     * 用户列表界面
     * */
    @RequestMapping(value = "/User")
    public String list(User user, Model model) {

        List<User> userList = userDao.findAllUser();

        model.addAttribute("userList", userList);
        return "UserProfile";
    }

    /**
     * 新增用户信息页面
     * */
    @RequestMapping(value = "/UserForm")
    public String form(User user,Model model){

        return "/user/userAddForm";
    }
    /**
     * 新增用户信息
     * */
    @RequestMapping(value = "/UserAdd")
    public String addUser(User user,Model model){
        userService.addUser(user);
        return "redirect:/User";
    }

    /**
     * 首页跳转
     * */
    @RequestMapping(value = "/")
    public String index(User user, String message , Model model, HttpSession httpSession) {
        if (httpSession.getAttribute( "userAccount")!=null){
            model.addAttribute("loginStatus",true);
            return "user/loginIndex";
        }
        if (user == null) {
            user = new User();
        }

        model.addAttribute("message",message);
        model.addAttribute("user1", user);
        return "index";
    }

    /**
     * 用户登录
     * */
    @RequestMapping(value = "/login")
    public String login(User user,Model model,HttpSession httpSession) {
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
            /*redirectAttributes.addFlashAttribute("account",user.getAccount());
            redirectAttributes.addFlashAttribute("message",message);*/
            return "redirect:/";
        }
        if (loginStatus){
            message = "登录成功！";
            httpSession.setAttribute("userAccount",user.getAccount());
        }else {
            //登录失败时，返回页面，
            message = "账号或密码错误,请重新输入！";
            model.addAttribute("message",message);
            return "redirect:/";
        }
        model.addAttribute("message",message);
        model.addAttribute("loginStatus",loginStatus);
        return "user/loginIndex";
    }
}
