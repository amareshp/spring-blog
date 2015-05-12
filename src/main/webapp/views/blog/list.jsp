<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!--  <script src="//cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>  -->
<script src="/spring-blog/resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
    <div class="container">
        <h2>Blogs</h2>
        <c:forEach items="${blogs}" var="blog">
            <!--  
            <div class="row" style="border: 2px solid black">
                <div>
                    <c:out value="${blog.id}" />
                </div>
                <div>
                    <c:out value="${blog.title}" />
                </div>
                <div>
                    <p>${blog.blogText}</p>
                </div>
            </div>
            -->
            <table class="table table-bordered">
                <tr>
                    <td>${blog.id}.&nbsp;&nbsp;${blog.title}</td>
                </tr>
                <tr>
                    <td>${blog.blogText}</td>
                </tr>
            </table>
        </c:forEach>
    </div>
    <script type="text/javascript">
					CKEDITOR.replace('blogText');
				</script>

</body>
</html>