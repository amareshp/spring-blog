<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*"%>

<head>
<title>Demo 1 - Menucool Image Slider</title>
<link href="/spring-blog/gallery/themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="/spring-blog/gallery/themes/1/js-image-slider.js" type="text/javascript"></script>
<link href="/spring-blog/gallery/generic.css" rel="stylesheet" type="text/css" />

<!-- bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="div1">
        <h2>Demo 1 - Menucool Image Slider</h2>
        <p>
            Demos: 
            <a href="/spring-blog/gallery/demo1.html" class="current">1</a>
            <a href="/spring-blog/gallery/demo2.html">2</a>
            <a href="/spring-blog/gallery/demo3.html">3</a>
            <a href="/spring-blog/gallery/demo4.html">4</a>
            <a href="/spring-blog/gallery/demo5.html">5</a>
            <a href="/spring-blog/gallery/demo6.html">6</a>
            <a href="/spring-blog/gallery/demo7.html">7</a>
            <a href="/spring-blog/gallery/demo8.html">8</a>
        </p>
    </div>
    <div id="sliderFrame">
        <div id="slider">
            <%
                String dirName = request.getAttribute("dirName").toString();
                String file = application.getRealPath("/gallery/albums/" + dirName);

                File f = new File(file);
                String[] fileNames = f.list();
                File[] fileObjects = f.listFiles();
            %>
            <%
                for (int i = 0; i < fileObjects.length; i++) {
                    if (!fileObjects[i].isDirectory()) {
            %>
            <img src="/spring-blog/gallery/albums/<%=dirName%>/<%=fileNames[i]%>" alt=""  />
            <%
                }
                }
            %>
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
    </div>

    <div class="div2">
        <ul>
            <li><b>Copy & Paste</b>: Copy source code and paste it into your own page. All source codes/files are
                within the <i>demo1.html</i> and the "<i>\themes\1\</i>" folder</li>
            <li><b>Transitional effects</b>: You can choose from 17 transitional effects via the <i>sliderOptions</i>
                in the <em>js-image-slider.js</em>. Visit <a
                href="http://www.menucool.com/slider/javascript-image-slider-demo1" target="_blank"
            >Image Slider Demo 1</a> to see how each effect looks and how to customize</li>
            <li><b>Navigation Bullets</b>: Navigation bullets are created automatically by the script of the image
                slider.
                <p>
                    The CSS class selector <span class="green">.navBulletsWrapper</span> can be used to change the nav
                    bullets' position and style.
                </p>
                <p>
                    If you don't need the Navigation Bullets, just hide them via CSS:<br />
                    <span class="green cn">div.navBulletsWrapper {display:none;}</span>
                </p></li>
            <li><b>HTML Caption</b>: Captions are set through each slide image's <span class="cn">alt</span>
                attribute. If the caption contains HTML content, you can put the content inside a DIV or SPAN
                element(usually styled as <span class="cn">display:none</span>), give the element an ID, and set the <span
                class="cn"
            >alt</span> as "#(the content container's id)". For example: <span class="cn">alt="#caption4"</span></li>
            <li>The image slider shown in this demo is for free.</li>
            <li>For detailed instructions, please visit online <a
                href="http://www.menucool.com/slider/javascript-image-slider-demo1"
            >Demo 1</a> and <a href="http://www.menucool.com/javascript-image-slider" target="_blank">JavaScript Image
                    Slider</a></li>
        </ul>
    </div>
</body>
