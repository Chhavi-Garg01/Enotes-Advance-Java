<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user2=(UserDetails)session.getAttribute("userD");  
if(user2==null){
response.sendRedirect("login.jsp");
session.setAttribute("Login-Error","Please Login...");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        
            <style type="text/css">
                h1{
                 font-family: cursive;
                 color: orange;
                }
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
         <div class="container-fluid p-0">
             <%@include file="all_component/navbar.jsp" %>
             <div class="card">
                 <div class="card-body text-center">
                    <img src="img/n9.png" class="img-fluid mx-auto" style="width:380px;">
                    <h1> START WRITING YOUR NOTES </h1>
                    <a href="addNote.jsp" class="btn btn-outline-primary">Start Here</a>
                 </div>
             </div>
             
         </div>
    </body>
</html>
