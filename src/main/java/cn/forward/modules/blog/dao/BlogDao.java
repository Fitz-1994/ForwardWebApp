package cn.forward.modules.blog.dao;

import cn.forward.modules.blog.entity.Blog;

import java.util.List;

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

    /**
     * 查询所有博客
     * @param blog 包含博客类型
     * @return List<Blog> 博客记录的list
     * */
    List<Blog> findBlogs(Blog blog);
}
