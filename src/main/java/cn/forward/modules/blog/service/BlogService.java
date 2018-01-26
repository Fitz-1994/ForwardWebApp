package cn.forward.modules.blog.service;


import cn.forward.common.system.SystemCommon;
import cn.forward.modules.blog.dao.BlogDao;
import cn.forward.modules.blog.entity.Blog;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 博客操作
 * @author Forward
 * @version 2018-01-22
 */
@Service
public class BlogService {
    @Autowired
    private BlogDao blogDao;
    /**
     * 日志对象
     * */
    private static Logger logger = Logger.getLogger(BlogService.class);

    /**
     * 保存（更新博客）
     * @param blog 博客实例
     * */
    public void saveBlog(Blog blog){
        if (StringUtils.isBlank(blog.getId())){
            blog.setId(SystemCommon.getUUId());
            blog.setDelFlag("0");
            Date createDate = new Date();
            blog.setGmtCreate(createDate);
            blog.setGmtModified(createDate);
            blogDao.insertBlog(blog);
        }else {
            // todo 更新博客的操作
        }
    }

    /**
     * 查询所有博客
     * @param type 博客类型，如果需要查找所有博客，请在type中传入0
     *             1、技术博客
     *             2、兴趣爱好
     *             3、生活随笔
     * */
    public List<Blog> findBlogs(String type){
        Blog blog = new Blog();
        blog.setBlogType(type);
        try {
            return blogDao.findBlogs(blog);
        } catch (Exception e){
            logger.error("出错",e);
        }
        return null;
    }
}
