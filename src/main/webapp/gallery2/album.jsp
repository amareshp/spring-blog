<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*"%>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>A simple DIY responsive slideshow made with HTML5, CSS3, and JavaScript</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans|Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="albums/demo/css/demostyles.css">
        <link rel="stylesheet" href="css/simple-slideshow-styles.css">
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <header>
            <h1>A Better Simple Slideshow</h1>
            <p><span class="desc">A simple DIY responsive JavaScript slideshow.</span> [<a href="https://github.com/leemark/better-simple-slideshow">GitHub<span> repo</span></a>]</p>
        </header>    
        <div class="bss-slides num1" tabindex="1" autofocus="autofocus">

            <%
                String dirName = request.getParameter("name").toString();
                String file = application.getRealPath("/gallery2/albums/" + dirName + "/img");

                File f = new File(file);
                String[] fileNames = f.list();
                File[] fileObjects = f.listFiles();
            %>
            <%
                for (int i = 0; i < fileObjects.length; i++) {
                    if (!fileObjects[i].isDirectory()) {
            %>
            <figure>
              <img src="/spring-blog/gallery2/albums/<%=dirName%>/img/<%=fileNames[i]%>" width="100%" /><figcaption>"Selina" by <a href="https://www.flickr.com/photos/thomashawk/14586158819/">Amaresh</a>.</figcaption> 
            </figure>
            <%
                }
                }
            %>

        </div> <!-- // bss-slides -->  
<div class="content">
<h2>What is it?</h2>

<p>It's a fairly basic slideshow, written in javascript. This is a dual-purpose project, it's meant to be something you can drop right into your page and use if you so choose, but it's also meant as an example/tutorial script showing how to build a simple DIY slideshow from scratch on your own. <a href="http://themarklee.com/2014/10/05/better-simple-slideshow/">Here is a tutorial/walkthrough</a>.</p>
        
<h2>Features</h2>
<ul>
    <li>fully responsive</li>
    <li>option for auto-advancing slides, or manually advancing by user</li>
    <li>multiple slideshows per-page</li>
    <li>supports arrow-key navigation</li>
    <li>full-screen toggle using HTML5 fullscreen api</li>
    <li>swipe events supported on touch devices (requires <a href="https://github.com/hammerjs/hammer.js">hammer.js</a>)</li>
    <li>written in vanilla JS--this means no jQuery dependency (much &hearts; for <a href="https://github.com/jquery/jquery">jQuery</a> though!)</li>
</ul>
        
<h2>Getting Started</h2>
<ol>
<li><p>HTML markup for the slideshow should look basically like this, with a container element wrapping the whole thing (doesn't have to be a <span class="code">&lt;div&gt;</span>) and each slide is a <span class="code">&lt;figure&gt;</span>.</p>

<script src="https://gist.github.com/leemark/83571d9f8f0e3ad853a8.js"></script> </li>   

<li>Include the script: <span class="code">js/better-simple-slideshow.min.js</span> or <span class="code">js/better-simple-slideshow.js</span></li>
<li>Include the stylesheet <span class="code">css/simple-slideshow-styles.css</span></li>
<li>Initialize the slideshow:
<script src="https://gist.github.com/leemark/479d4ecc4df38fba500c.js"></script>
</li>
</ol>
<h2>Options</h2>

To customize functionality, create an options object, then pass it into <span class="code">makeBSS()</span> as the second argument, as seen below:

<script src="https://gist.github.com/leemark/c6e0f5c47acb7bf9be16.js"></script>

<h2>Demo/Examples</h2>
    <h3>Example #1 (slideshow at top of this page)</h3>
    <p>HTML markup:</p>
    <script src="https://gist.github.com/leemark/19bafdb1abf8f6b4e147.js"></script>
    <p>JavaScript code:</p>
    <script src="https://gist.github.com/leemark/a09d2726b5bfc92ea68c.js"></script>
    
    <h3>Example #2 (below)</h3>
        <div class="bss-slides num2" tabindex="2">
	       <figure>
		      <img src="http://themarklee.com/wp-content/uploads/2013/12/snowying.jpg" width="100%" /><figcaption>"Snowying" by <a href="http://www.flickr.com/photos/fiddleoak/8511209344/">fiddleoak</a>.</figcaption> 
	       </figure>
            <figure>
                <img src="http://themarklee.com/wp-content/uploads/2013/12/starlight.jpg" width="100%" /><figcaption>"Starlight" by <a href="http://www.flickr.com/photos/chaoticmind75/10738494123/in/set-72157626146319517">ChaoticMind75</a>.</figcaption> 
	       </figure>
	       <figure>
		      <img src="http://themarklee.com/wp-content/uploads/2013/12/snowstorm.jpg" width="100%" /><figcaption>"Snowstorm" by <a href="http://www.flickr.com/photos/tylerbeaulawrence/8539457508/">Beaulawrence</a>.</figcaption> 
	       </figure>
            <figure>
		      <img src="http://themarklee.com/wp-content/uploads/2013/12/misty-winter-afternoon.jpg" width="100%" /><figcaption>"Misty winter afternoon" by <a href="http://www.flickr.com/photos/22746515@N02/5277611659/">Bert Kaufmann</a>.</figcaption> 
	       </figure>
            <figure>
		      <img src="http://themarklee.com/wp-content/uploads/2013/12/good-morning.jpg" width="100%" /><figcaption>"Good Morning!" by <a href="http://www.flickr.com/photos/frank_wuestefeld/4306107546/">Frank Wuestefeld</a>.</figcaption> 
	       </figure>
        </div> <!-- // bss-slides --> 
    
<p>HTML markup:</p>
<script src="https://gist.github.com/leemark/de90c78cb73673650a5a.js"></script>

<p>JavaScript code:</p>
<script src="https://gist.github.com/leemark/046103061c89cdf07e4a.js"></script>
    
    
</div> <!-- // content -->   
<footer>Example photos are property of their respective owners, all code is <a href="https://github.com/leemark/better-simple-slideshow/blob/gh-pages/LICENSE">freely licensed for your use</a>. <br>Made especially for you by <a href="http://themarklee.com">Mark Lee</a> aka <a href="http://twitter.com/@therealmarklee">@therealmarklee</a> <br><span>&#9774; + &hearts;</span></footer>        
<script src="demo/js/hammer.min.js"></script><!-- for swipe support on touch interfaces -->
<script src="js/better-simple-slideshow.min.js"></script>
<script>
var opts = {
    auto : {
        speed : 3500, 
        pauseOnHover : true
    },
    fullScreen : false, 
    swipe : true
};
makeBSS('.num1', opts);

var opts2 = {
    auto : false,
    fullScreen : true,
    swipe : true
};
makeBSS('.num2', opts2);
</script>
</body>
</html>
