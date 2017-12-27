package cn.forward.modules.user.service;

import cn.forward.common.System.SystemCommon;
import cn.forward.modules.user.dao.UserDao;
import cn.forward.modules.user.entity.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Forward
 */
@Service
public class UserService {
    @Autowired
    UserDao userDao;
    /**
     * 日志对象
     * */
    private static Logger logger = Logger.getLogger(UserService.class);

    /**
     * 新增用户
     * */
    public void addUser(User user){
        user.setId(SystemCommon.getUUId());
        //对密码进行加密
        user.setPassword(SystemCommon.encryptPassword(user.getPassword()));
        userDao.addUser(user);
    }

    /**
     * 登录验证方法
     * */
    public boolean loginValidate(String account, String password){
        String ciphertext = SystemCommon.encryptPassword(password);
        User user = userDao.getUserByAccount(account);
        if (user != null && ciphertext.equals(user.getPassword())){
            logger.info("登录成功");
            return true;
        }
        logger.info("登录失败");
        return false;
    }

    /**
     * 通过账号获取用户
     * */
    public User getUserByAccount(String account){
        return userDao.getUserByAccount(account);
    }
}
