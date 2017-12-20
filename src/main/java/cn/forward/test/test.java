package cn.forward.test;

import cn.forward.modules.user.dao.UserDao;
import cn.forward.modules.user.entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {

    private static ApplicationContext ctx;

    static {
        ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
    }

    public static void main(String[] args) {
        UserDao userDao = (UserDao) ctx.getBean("userDao");
        // 测试id=1的用户查询，可根据数据库中的情况修改.
        List<User> userList = userDao.findAllUser();
        for (User user:userList){
            System.out.println("用户名："+user.getName());
        }

    }
}
