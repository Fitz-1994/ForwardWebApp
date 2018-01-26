package cn.forward.modules.blog.entity;

import cn.forward.common.base.BaseEntity;

/**
 * @author Forward
 * @version 2018-01-19
 */
public class Blog extends BaseEntity{
    private String blogTitle;
    private String blogSubTitle;
    private String blogContent;
    /**
     * 博客类型
     * 1、技术博客
     * 2、音乐讨论
     * 3、生活随笔
     * */
    private String blogType;

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getBlogSubTitle() {
        return blogSubTitle;
    }

    public void setBlogSubTitle(String blogSubTitle) {
        this.blogSubTitle = blogSubTitle;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public String getBlogType() {
        return blogType;
    }

    public void setBlogType(String blogType) {
        this.blogType = blogType;
    }
}
