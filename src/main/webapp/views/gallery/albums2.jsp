<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*"%>
<HTML>
<HEAD>
<TITLE>Index of Files</TITLE>
<title>Example of Bootstrap 3 List Groups</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style type="text/css">
    .list-group{
        width: 200px;
    }
    .bs-example{
        margin: 20px;
    }
</style></HEAD>

<BODY>
<div class="container">
    <H1>Albums</H1>
    <%
        String file = application.getRealPath("/gallery2/albums");

        File f = new File(file);
        String[] fileNames = f.list();
        File[] fileObjects = f.listFiles();
    %>
    <div class="bs-example">
    <UL class="list-group">
        <%
            for (int i = 0; i < fileObjects.length; i++) {
                if (fileObjects[i].isDirectory()) {
        %>
        <LI class="list-group-item"><A HREF="/spring-blog/gallery/album2/<%=fileNames[i]%>"><%=fileNames[i]%></A>
            <%
                }
                }
            %>
    </UL>
    </div>
    </div>
</BODY>
</HTML>