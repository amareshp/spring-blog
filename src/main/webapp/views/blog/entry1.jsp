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
<script src="../resources/js/ckeditor/ckeditor.js"></script>
</head>
<body>
	<div class="container">
		<h2>Write a blog:</h2>
		<form:form action="/spring-blog/blog" method="post"
			commandName="blogForm">

			<div class="form-group">
				<form:label path="title">Title</form:label>
				<form:input type="text" path="title" class="form-control" id="title"
					name="title" placeholder="Enter blog title"></form:input>
			</div>
			<div class="form-group">
				<form:label path="createdDate">Created Date</form:label>
				<form:input type="text" path="createdDate" class="form-control"
					id="createdDate" name="createdDate"
					placeholder="Enter Created Date"></form:input>
			</div>
			<div>
				<p>
					<form:label path="blogText" for="blogText">Blog text</form:label>
					<form:textarea path="blogText" id="blogText" name="blogText"></form:textarea>
				</p>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form:form>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('blogText');
	</script>

</body>
</html>