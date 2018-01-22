package cn.forward.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

    private static ApplicationContext ctx;

    static {
        ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
    }

    public static void main(String[] args) {
        String str1 = "20170101";
        String str2 = "20160104";
        System.out.println(str1.compareTo(str2));

        /*
        * str1 日期 大于 str2
        * 返回1
        *
        * str1 日期 小于 str2
        * 返回-1
        *
        * */
        /*UserDao userDao = (UserDao) ctx.getBean("userDao");
        // 测试id=1的用户查询，可根据数据库中的情况修改.
        List<User> userList = userDao.findAllUser();
        for (User user:userList){
            System.out.println("用户名："+user.getName());
        }*/

    }
}
