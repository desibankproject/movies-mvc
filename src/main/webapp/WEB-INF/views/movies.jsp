<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Movies page</title>
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
 	<c:forEach items="${dmovies}" var="movie">
    <div class="form-group">
      	<table>
      		<tr>
      			<td>Name  : ${movie.title}</td>
      		</tr>
      		<tr>
      			<td>Email  : ${movie.email}</td>
      		</tr>
      	</table>
       <img src="${movie.photo}">
    </div>
    <hr style="height: 5px;background-color: #03a9f4;"/>
    </c:forEach>
</div>

</body>
</html>
