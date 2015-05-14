<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <style>
    /* Prevents slides from flashing */
    #slides {
      display:none;
    }
  </style>

  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="/spring-blog/resources/js/jquery/jquery.slides.min.js"></script>

  <script>
    $(function(){
      $("#slides").slidesjs({
        width: 600,
        height: 300
      });
    });
    

  </script>
</head>
<body>
  <div id="slides" width="600" height="300">
    <img src="/spring-blog/images/image1.jpg">
    <img src="/spring-blog/images/image2.jpg">
  </div>
</body>

</html>