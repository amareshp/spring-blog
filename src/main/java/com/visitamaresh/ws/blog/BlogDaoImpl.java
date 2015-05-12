package com.visitamaresh.ws.blog;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.visitamaresh.ws.util.AbstractDao;
 
@Repository("blogDao")
public class BlogDaoImpl extends AbstractDao implements BlogDao{
 
    public void saveBlog(Blog blog) {
        persist(blog);
    }
 
    @SuppressWarnings("unchecked")
    public List<Blog> findAllBlogs() {
        Criteria criteria = getSession().createCriteria(Blog.class);
        return (List<Blog>) criteria.list();
    }
 
    public void deleteBlogById(Integer id) {
        Query query = getSession().createSQLQuery("delete from BLOG where id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }
 
     
    public Blog findById(Integer id){
        Criteria criteria = getSession().createCriteria(Blog.class);
        criteria.add(Restrictions.eq("id", id));
        return (Blog) criteria.uniqueResult();
    }
     
    public void updateBlog(Blog blog){
        getSession().update(blog);
    }
     
}