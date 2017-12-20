package cn.forward.modules.user.service;

import cn.forward.modules.user.entity.User;
import org.springframework.stereotype.Service;

/**
 * @author Forward
 */
@Service
public class UserService {

    public User setName(User user,String name) {
        user.setName(name);
        return user;
    }
}
