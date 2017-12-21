package cn.forward.modules.user.service;

import cn.forward.common.System.UserIdGen;
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

        user.setId(UserIdGen.getUUId());
        userDao.addUser(user);
    }
}
