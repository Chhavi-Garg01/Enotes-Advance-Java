
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
.back-img{
background:url("img/book3.jpg");
width:100%;
height:80vh;
background-repeat:no-repeat;
background-size:cover;
background-position: center;
background-attachment: fixed;
}

</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="all_component/allcss.jsp" %>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
       
        <div class="container-fluid back-img">
  <div class="text-center">
  <h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i>  Welcome to ENotes</h1>
<a href="login.jsp" class="btn btn-light"><i class="fa fa-user" aria-hidden="true"></i>  Login</a>
<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>  Register</a>
  
  </div>

</div>
      <%@include file="all_component/footer.jsp" %> 
    </body>
</html>
