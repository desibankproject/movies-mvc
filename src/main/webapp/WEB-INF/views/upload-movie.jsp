<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<header style="height: 28px;background-color: yellow;">

</header>
<div class="container">
  <h2>Learning Spring 5.x MVC!!!!!!!!!!!!!!!!!!!!!!!</h2>
  <img src="${pageContext.request.contextPath}/img/maxresdefault.jpg" style="height: 200px;">
  <form name="movieForm" action="${pageContext.request.contextPath}/upload-movie" method="post">
  <br/>
      <hr/>
    <div class="form-group">
      <label for="name">Title:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">
      	
    </div>
    <hr/>
     <div class="form-group">
      <label for="language">Language:</label>
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <label><input type="radio"  name="language" checked value="Hindi">Hindi</label>
        &nbsp; &nbsp;
         <label><input type="radio" name="language" value="English">English</label>
    </div>
       <hr/>
    
     <div class="form-group">
      <label for="director">Director:</label>
      <input type="text" class="form-control" id="director" name="director">
    </div>
    
     <div class="form-group">
      <label for="city">Year:</label>
      <select class="form-control" id="year"  name="year" style="width: 50%;">
      	<option>2017</option>
      		<option>2018</option>
      			<option>2010</option>
      				<option>2020</option>
      </select>
    </div>
    
     <div class="form-group">
      <label for="city">Photo:</label>
      <input type="text" class="form-control" id="photo" name="photo" ">
    </div>
    
  <!--    <div class="form-group">
      <label for="photo">Photo:</label>
      <input type="file" class="form-control" id="tphoto"  name="tphoto" style="width: 35%;display: inline;">
       <input type="text" id="photo" class="form-control"   name="photo" style="width: 35%;display: inline;">
       <img src="" id="review-photo"  style="height: 80px;">
    </div>
     -->
    
    <button type="submit" class="btn btn-primary btn-lg" >Upload!</button>
    <a href="${pageContext.request.contextPath}/movies">
        <button type="button" class="btn btn-warning btn-lg">Show Movies!</button>
        
        </a>
  </form>
</div>

</body>
</html>
