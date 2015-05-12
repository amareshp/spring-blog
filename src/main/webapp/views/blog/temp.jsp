<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
    src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!--  <script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>  -->
<script src="/spring-blog/resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
    <div class="container">
        <h2>Write a blog:</h2>
        <form role="form" action="/spring-blog/" method="post">
            <div class="form-group">
                <label for="url">Blog Title:</label> <input type="text"
                    class="form-control" id="url" name="url"
                    placeholder="Enter blog title">
            </div>
            <div>
                <p>
                    <label for="editor1">Blog text</label>
                    <textarea cols="80" id="editor1" name="editor1" rows="10"></textarea>
                </p>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </div>
    <script type="text/javascript">
        CKEDITOR.replace('editor1');
    </script>

</body>
</html>