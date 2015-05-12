package com.visitamaresh.ws.blog;

import java.util.List;

public interface BlogService {
 
    void saveBlog(Blog blog);
 
    List<Blog> findAllBlogs();
 
    void deleteBlogById(Integer id);
 
    Blog findById(Integer id);
 
    void updateBlog(Blog blog);
}