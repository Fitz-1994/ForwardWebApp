package cn.forward.common.session;

import cn.forward.common.system.SystemCommon;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Forward
 * @version 2018-01-19
 */
public class LoginInterceptor implements HandlerInterceptor  {

    private final String ADMINSESSION = "user";
    /**
     * 拦截之前的处理
     * */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
        Object sessionObj = request.getSession().getAttribute(ADMINSESSION);
        if(sessionObj!=null) {
            return true;
        }
        response.sendRedirect(request.getContextPath()+ SystemCommon.getProperties("forwardweb").getString("adminPath")+"/login");
        return false;
    }
    /**
     * 拦截之后的处理
     * */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView mav) throws Exception { }
    /**
     * 全部完成的处理
     * */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception e) throws Exception { }
}