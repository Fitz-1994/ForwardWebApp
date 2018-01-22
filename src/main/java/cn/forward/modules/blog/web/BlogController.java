package cn.forward.modules.blog.web;

import cn.forward.modules.blog.entity.Blog;
import cn.forward.modules.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Forward
 * @version 2018-01-22
 */
@Controller
@RequestMapping(value = "${adminPath}/blog")
public class BlogController {
    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "addBlogForm")
    public String addBlogForm(Model model){
        model.addAttribute("blog",new Blog());
        return "/blog/addBlogForm";
    }

    @RequestMapping(value = "saveBlog")
    public String saveBlog(Blog blog){
        blogService.saveBlog(blog);
        return "/blog/addBlogForm";
    }
}
