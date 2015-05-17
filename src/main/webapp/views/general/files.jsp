<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*" %>
<HTML>
    <HEAD>
        <TITLE>Index of Files</TITLE>
    </HEAD>

    <BODY>
        <H1>Index of Files</H1>
        <% 
            String file = application.getRealPath("/gallery"); 

            File f = new File(file);
            String [] fileNames = f.list();
            File [] fileObjects= f.listFiles();
        %>
        <UL>
        <%
            for (int i = 0; i < fileObjects.length; i++) {
                if(!fileObjects[i].isDirectory()){
        %>
        <LI>
          <A HREF="/spring-blog/gallery/<%= fileNames[i] %>"><%= fileNames[i] %></A>
          &nbsp;&nbsp;&nbsp;&nbsp;
          (<%= Long.toString(fileObjects[i].length()) %> bytes long)
        <%
                }
            }
        %>
        </UL>
    </BODY>
</HTML>