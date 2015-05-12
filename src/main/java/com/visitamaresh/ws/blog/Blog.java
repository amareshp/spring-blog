package com.visitamaresh.ws.blog;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.joda.time.format.DateTimeFormat;
 
@Entity
@Table(name="BLOG")
public class Blog {
 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
 
    @Column(name = "TITLE", nullable = false)
    private String title;
 
    @Column(name = "CREATED_DATE", nullable = false)
    @Type(type="org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate createdDate;
 
    @Column(name = "BLOG_TEXT", nullable = false)
    private String blogText;
    
    public Blog() {
        //
    }
    
    public Blog(String title, String createdDate, String blogText) {
        this.title = title;
        LocalDate date = LocalDate.parse("6/25/2015", DateTimeFormat.forPattern("MM/dd/yyyy"));
        this.createdDate = date;
        this.blogText = blogText;
    }
    
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getTitle() {
        return title;
    }
 
    public void setTitle(String title) {
        this.title = title;
    }
 
    public LocalDate getCreatedDate() {
        return createdDate;
    }
 
    public void setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
    }
 
    public String getBlogText() {
        return blogText;
    }
 
    public void setBlogText(String blogText) {
        this.blogText = blogText;
    }
 
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof Blog))
            return false;
        Blog other = (Blog) obj;
        if (id != other.id)
            return false;
        if (title == null) {
            if (other.title != null)
                return false;
        } else if (!title.equals(other.title))
            return false;
        return true;
    }
 
    @Override
    public String toString() {
        return "Blog [id=" + id + ", title=" + title + "]";
    }
 
}