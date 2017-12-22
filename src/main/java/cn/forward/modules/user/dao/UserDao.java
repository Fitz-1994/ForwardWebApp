package cn.forward.modules.user.dao;

import cn.forward.modules.user.entity.User;

import java.util.List;

/**
 * @author Forward
 */

public interface UserDao {
    void insertUser(User user);

    User findUserByName(String name);

    User getUserById(String id);

    List<User> findAllUser();

    void addUser(User user);

    User getUserByAccount(String name);

}
