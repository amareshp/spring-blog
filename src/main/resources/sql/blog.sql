CREATE TABLE BLOG(
    id INT NOT NULL auto_increment, 
    CREATED_DATE DATE NOT NULL, 
    title VARCHAR(150) NOT NULL,
    blog_text TEXT NOT NULL,
    PRIMARY KEY (id)
);
