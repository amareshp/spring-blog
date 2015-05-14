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
<!-- Include Bootstrap Datepicker -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

</head>
<body>
    <div class="container">
        <h2>Write a blog:</h2>
        <form:form role="form" action="/spring-blog/blog/save" method="post" modelAttribute="blog">
            <div class="form-group">
                <label for="title">Blog Title:</label>
                <form:input class="form-control" id="title" name="title" path="title" placeholder="Enter blog title"></form:input>
            </div>
            <div class="form-group">
                <label for="createdDate">Created date:</label>
                <form:input type="text" placeholder="show datepicker" class="form-control" id="createdDate"
                    name="createdDate" path="createdDate"
                ></form:input>
            </div>
            <div>
                <p>
                    <label for="blogText">Blog text</label>
                    <form:textarea rows="10" cols="80" id="blogText" name="blogText" path="blogText"></form:textarea>
                </p>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form:form>
    </div>
    <script type="text/javascript">
					// When the document is ready
					$(document).ready(function() {
						CKEDITOR.replace('blogText');
						$('#createdDate').datepicker({
							format : "mm/dd/yyyy"
						});
					});
				</script>
</body>
</html>