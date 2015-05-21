package com.visitamaresh.ws.blog;

import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.visitamaresh.ws.generic.GenericPojo;

@Controller
@RequestMapping("/blog")
public class BlogController {
    private static Logger logger = Logger.getLogger(new Exception().getStackTrace()[0].getClassName());

    @Autowired
    private BlogService blogService;

    @RequestMapping(value="/list", method=RequestMethod.GET)
    public String listAll(Model model) {
        List<Blog> blogs = blogService.findAllBlogs();
        model.addAttribute("blogs", blogs);
        return "blog/list";
    }

    @RequestMapping(value="/id/{id}", method=RequestMethod.GET)
    public String blog(@PathVariable("id") Integer id, Model model) {
        Blog blog = blogService.findById(id);
        model.addAttribute("blog", blog);
        return "blog/blog";
    }
    
    @RequestMapping(value="/entry", method=RequestMethod.GET)
    public String writeBlog(@Valid @ModelAttribute("blog")Blog blog, BindingResult result, ModelMap model) {
        List<Blog> blogs = blogService.findAllBlogs();
        model.addAttribute("blogs", blogs);
        return "blog/entry";
    }

    @RequestMapping(value="/save", method=RequestMethod.POST)
    public String saveBlog(@Valid @ModelAttribute("blog")Blog blog, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "generic/error";
        }
        
        logger.info("blog title: " + blog.getTitle());
        logger.info("blog text: " + blog.getBlogText());
        blogService.saveBlog(blog);
        return "redirect:list";
    }
}