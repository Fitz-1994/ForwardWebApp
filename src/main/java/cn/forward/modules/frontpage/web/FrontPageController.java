package cn.forward.modules.frontpage.web;

import cn.forward.modules.blog.entity.Blog;
import cn.forward.modules.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * 前台页面的跳转控制
 * @author Forward
 * @version 2018-01-14
 * */
@Controller
@RequestMapping(value = "${frontPath}")
public class FrontPageController {
    @Autowired
    private BlogService blogService;

    @RequestMapping(value = {"list", ""})
    public String list(Model model) {
        //查询所有博客
        List<Blog> blogList = blogService.findBlogs("0");
        //技术博客列表
        List<Blog> techBlogList = new ArrayList<>();
        //兴趣爱好博客列表
        List<Blog> hobbyBlogList = new ArrayList<>();
        //生活随笔博客列表
        List<Blog> lifeBlogList = new ArrayList<>();
        for (Blog blog:blogList){
            if ("1".equals(blog.getBlogType())){
                techBlogList.add(blog);
            }else if ("2".equals(blog.getBlogType())){
                hobbyBlogList.add(blog);
            }else if ("3".equals(blog.getBlogType())){
                lifeBlogList.add(blog);
            }
        }
        model.addAttribute("techBlogList",techBlogList);
        model.addAttribute("hobbyBlogList",hobbyBlogList);
        model.addAttribute("lifeBlogList",lifeBlogList);
        return "frontpage/frontindex";
    }
    @RequestMapping(value = "blogList")
    public String blogList(String blogType){
        return "frontpage/blog_list";
    }
    @RequestMapping(value = "blogDetail")
    public String blogDetail(){
        return "frontpage/blog_detail";
    }
}
