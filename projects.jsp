<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}
/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 60px;
  text-align: center;
  background: url(red_banner.png);
  color: white;
}
    img{
        max-width: 100%;
        max-height: 100%;
        display: block; /* remove extra space below image */
          margin-left: auto;
  margin-right: auto;
 
    }
/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}
 .small_font {
  font-size: 10px;
}
/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Column container */
.row {  
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  -ms-flex: 30%; /* IE10 */
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
}

/* Main column */
.main {   
  -ms-flex: 70%; /* IE10 */
  flex: 70%;
  background-color: white;
  padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Footer */
.footer {
  padding: 1px;
  text-align: center;
  background: #ddd;
  font-weight: bold;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */


/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }

}
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}

* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 40px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: middle;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 20px;
}
mark { 
  background-color: #DC143C;
  color: white;
  border-radius: 25px;
  padding: 4px;
   font-weight: bold;
line-height: 1.8;
}

mark2 { 
  background-color: #1A74ED;
  color: white;
  border-radius: 0px;
  padding: 4px;
   font-weight: bold;
line-height: 1.8;
}
mark2:hover{

  box-shadow: 1.5px 2px 1.5px #000000;

}
mark3 { 
  background-color: ##24292e;
  color: white;
  border-radius: 0px;
  padding: 4px;
   font-weight: bold;
line-height: 1.8;
}
mark2:hover{

  box-shadow: 1.5px 2px 1.5px #000000;

}
/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>
</head>
<body>

<div class="header">
  
 
  
</div>

<div class="navbar">
  <a href="#">Resume</a>
  <a href="#">Projects</a>
  <a href="#">Blog</a>
  <a href="#" class="right">contacts</a>
</div>
<div >

<div >
<h2></h2>
</div>


<div id="myBtnContainer" style ="  margin: 0 auto;  display: flex;
  justify-content: center;">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> Whatever</button>
  <button class="btn" onclick="filterSelection('cars')"> Cars</button>
  <button class="btn" onclick="filterSelection('people')"> People</button>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column nature">
    <div class="content">
<div class="container">

  <div class="mySlides">
    <div class="numbertext">1 / 3</div>
   <video width="100%" height="100%" controls>
  <source src="Reservation functionality-Ahmed Aboukoura.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg"> </video> </div>

  <div class="mySlides">
    <div class="numbertext">2 / 3</div>
       <video width="100%" height="100%" controls>
  <source src="Browsing and Search Functionality Video - Zachary Gampel.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">

</video>
  </div>

  <div class="mySlides">
    <div class="numbertext"style="color:red;">3 / 3</div>
          <video width="100%" height="100%" controls>
  <source src="Customer Representative Function - Jaktar Bains.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">

</video>
  </div>
   
      <a class="prev" onclick="plusSlides(-1)" style="color:red;">&#10094;</a>
  <a class="next" onclick="plusSlides(1)"style="color:red;">&#10095;</a>


</div>

 <h2>This a Railway Total booking System Group Project, in which me, and my Partner created, as the videos illustrates, and we used the following technologies to do it.</h2> 
<p Style="font-weight: bold;" >
<mark2><a target="_blank"style="color:white;text-decoration: none; " href="https://bitbucket.org/ahmedkoura1992/railway-bookingsystem/src/master/">view on bitbucket</a></mark2><br><br>
 Initially <mark> Database-schema</mark> <mark> Database-tables</mark> <mark>Database-queries</mark><br><br>
 Back-End <mark>MySQL</mark> <mark> AWS</mark> <mark>Java</mark> <mark> JDBC</mark><br><br>
 Frontend <mark>HTML</mark> <mark> Javascript</mark> <mark>CSS</mark></p>
    </div>
  </div>

  <div class="column ">
    <div class="content">
<div class="container">

    <img src="pa5_2.PNG" alt="Lights" style="width:100%">

</div>

 <h2>Cache Simulator Application written in C</h2> 
<mark2><a style="color:white;text-decoration: none; " target="_blank" href="https://bitbucket.org/ahmedkoura1992/pa5/src/master/">view on bitbucket</a></mark2><br><br>
<p Style="font-weight: bold;">
. It simulate Memory read,
Calculate the number of caches reads, writes,hits, misseswith prefetching, and without prefetching. <br>
</p>
<p Style="font-weight: bold;" >
 Enviroment <mark> Linux</mark><br>
 Technoogy <mark>C</mark><br><br>
 Click <mark> Linux</mark>

    </div>
  </div>
  <div class="column ">
    <div class="content">
      <div class="container">

  <div class="mySlides1">
    <div class="numbertext">1 / 3</div>
    <img src="chess1.PNG" alt="Lights" style="width:100%">

 </div>

  <div class="mySlides1">
    <div class="numbertext">2 / 3</div>
    <img src="chess2.PNG" alt="Lights" style="width:100%">

  </div>

  <div class="mySlides1">
    <div class="numbertext">3 / 3</div>
    <img src="chess3.PNG" alt="Lights" style="width:100%">

  </div>
   
      <a class="prev" onclick="plusSlides1(-1)" style="color:red;">&#10094;</a>
  <a class="next" onclick="plusSlides1(1)"style="color:red;">&#10095;</a>


</div>


 <h2>Chess</h2> 
<mark2><a style="color:white;text-decoration: none; " target="_blank" href="https://github.com/ahmedaboukoura/chesss">view on Github</a></mark2><br><br>
<p Style="font-weight: bold;">
. It simulate Memory read,
Calculate the number of caches reads, writes,hits, misseswith prefetching, and without prefetching. <br>
</p>
  
</div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<div class="footer">
  <p>© Ahmedaboukoura.me</p>
  <p class="small_font">I didn't use template for this Webiste. Feel free to use the source code as you wish.</p>
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) AddClass(x[i], "show");
  }
}

function AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>
<script>
var slideIndex1 = 1;
showSlides1(slideIndex1);

function plusSlides1(n) {
  showSlides1(slideIndex1 += n);
}

function currentSlide1(n) {
  showSlides1(slideIndex1 = n);
}

function showSlides1(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides1");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex1 = 1}
  if (n < 1) {slideIndex1 = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex1-1].style.display = "block";
  dots[slideIndex1-1].className += " active";
  captionText.innerHTML = dots[slideIndex1-1].alt;
}
</script>
</body>
</html>
