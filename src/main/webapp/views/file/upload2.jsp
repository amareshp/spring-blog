<html>
<head>
<link href="/spring-blog/resources/css/dropzone.css" type="text/css" rel="stylesheet" />
<script src="/spring-blog/resources/js/dropzone/dropzone.js"></script>
<script>
function dzOptions() {
	// "myAwesomeDropzone" is the camelized version of the HTML element's ID
	nameOfFile = "abc";
	Dropzone.options.myAwesomeDropzone = {
	  paramName: file, // The name that will be used to transfer the file
	  uploadMultiple: true, 
	  maxFilesize: 5, // MB
	  accept: function(file, done) {
	    if (file.name == "justinbieber.jpg") {
	      done("Naha, you don't.");
	    }
	    else { done(); }
	  }
	};
}
</script>
</head>

    <body>
    <script type="text/javascript">dzOptions();</script>
        <main>
            <section>
                 <h1 id="try-it-out">Try it out!</h1>

                <div id="dropzone">
                    <form action="/spring-blog/upload" class="dropzone dz-clickable" id="myAwesomeDropzone">
                        <div class="dz-message">Drop files here or click to upload.
                            <br> <span class="note">Selected files are <strong>/Users/apatta2/MyData/pics/upload</strong></span>
                        </div>
                    </form>
                </div>
            </section>
        </main>
    </body>
</html>