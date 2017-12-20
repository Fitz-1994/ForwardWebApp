package cn.forward.modules.user.dao;

import cn.forward.modules.user.entity.User;

import java.util.List;

/**
 * @author Forward
 */

public interface UserDao {
    void insertUser(User user);

    User findUserByName(String name);

    User getUserByName(String name);

    List<User> findAllUser();

}
