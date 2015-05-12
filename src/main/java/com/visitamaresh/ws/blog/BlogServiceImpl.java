package com.visitamaresh.ws.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service("blogService")
@Transactional
public class BlogServiceImpl implements BlogService{
 
    @Autowired
    private BlogDao dao;
     
    public void saveBlog(Blog blog) {
        dao.saveBlog(blog);
    }
 
    public List<Blog> findAllBlogs() {
        return dao.findAllBlogs();
    }
 
    public void deleteBlogById(Integer id) {
        dao.deleteBlogById(id);
    }
 
    public Blog findById(Integer id) {
        return dao.findById(id);
    }
 
    public void updateBlog(Blog blog){
        dao.updateBlog(blog);
    }
}