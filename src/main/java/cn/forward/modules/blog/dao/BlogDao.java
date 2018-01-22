package cn.forward.modules.blog.dao;

import cn.forward.modules.blog.entity.Blog;

/**
 * @author Forward
 * @version 2018-01-19
 */
public interface BlogDao {
    /**
     * 保存新博文
     * @param blog 博文实例
     * */
    void insertBlog(Blog blog);
}
