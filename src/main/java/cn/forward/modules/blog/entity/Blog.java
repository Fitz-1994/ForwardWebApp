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
}
