package com.visitamaresh.ws.blog;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BlogController {
    private static Logger logger = Logger.getLogger(new Exception().getStackTrace()[0].getClassName());

    @Autowired
    private BlogService blogService;

    @RequestMapping(value="/blogs", method=RequestMethod.GET)
    public String listAll(Model model) {
        List<Blog> blogs = blogService.findAllBlogs();
        model.addAttribute("blogs", blogs);
        return "blog/list";
    }
    
    @RequestMapping(value="/entry", method=RequestMethod.GET)
    public String writeBlog(Model model) {
        List<Blog> blogs = blogService.findAllBlogs();
        model.addAttribute("blogs", blogs);
        return "blog/entry";
    }

    @RequestMapping(value="/entry", method=RequestMethod.POST)
    public String saveBlog(@RequestParam("title") String title, @RequestParam("createdDate") String createdDate, @RequestParam("blogText") String blogText) {
        logger.info("blog title: " + title);
        logger.info("blog text: " + blogText);
        Blog blog = new Blog(title, createdDate, blogText);
        blogService.saveBlog(blog);
        return "redirect:/blogs";
    }
}