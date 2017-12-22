package cn.forward.modules.user.service;

import cn.forward.common.System.SystemCommon;
import cn.forward.modules.user.dao.UserDao;
import cn.forward.modules.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Forward
 */
@Service
public class UserService {
    @Autowired
    UserDao userDao;
    public User setName(User user,String name) {
        user.setName(name);
        return user;
    }

    public void addUser(User user){

        user.setId(SystemCommon.getUUId());
        //对密码进行加密
        user.setPassword(SystemCommon.encryptPassword(user.getPassword()));
        userDao.addUser(user);
    }

    public boolean loginValidate(String account, String password){
        String ciphertext = SystemCommon.encryptPassword(password);
        User user = userDao.getUserByAccount(account);
        if (user != null && ciphertext.equals(user.getPassword())){
            return true;
        }
        return false;
    }
}
