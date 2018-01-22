package cn.forward.modules.blog.service;


import cn.forward.common.System.SystemCommon;
import cn.forward.modules.blog.dao.BlogDao;
import cn.forward.modules.blog.entity.Blog;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 博客操作
 * @author Forward
 * @version 2018-01-22
 */
@Service
public class BlogService {
    @Autowired
    private BlogDao blogDao;

    public void saveBlog(Blog blog){
        if (StringUtils.isBlank(blog.getId())){
            blog.setId(SystemCommon.getUUId());
            blog.setDelFlag("0");
            Date createDate = new Date();
            blog.setGmtCreate(createDate);
            blog.setGmtModified(createDate);
            blogDao.insertBlog(blog);
        }
    }
}
