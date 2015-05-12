package com.visitamaresh.ws.blog;

import java.util.List;

public interface BlogDao {
 
    void saveBlog(Blog blog);
     
    List<Blog> findAllBlogs();
     
    void deleteBlogById(Integer blogId);
     
    Blog findById(Integer blogId);
     
    void updateBlog(Blog blog);
}
