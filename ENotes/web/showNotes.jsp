<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.Db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.User.Post"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user3=(UserDetails)session.getAttribute("userD");  
if(user3==null){
response.sendRedirect("login.jsp");
session.setAttribute("Login-Error","Please Login...");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            img{
                 float: right;
                 padding-top: 20px;
            }
        </style>
        <title>Show Notes </title>
         <%@include file="all_component/allcss.jsp"%>
   
    </head>
    <body>
         <%@include file="all_component/navbar.jsp"%>
         <%
           String upmsg=(String)session.getAttribute("updatemsg");  
         if(upmsg!=null){
         %>
          <div class="alert alert-success" role="alert"><%=upmsg%></div>
                                      
           <% 
               session.removeAttribute("updatemsg");
                                           
               }
         %>
         
         
         <%
           String wrongmsg=(String)session.getAttribute("Wrongmsg");  
         if(wrongmsg!=null){
         %>
          <div class="alert alert-danger" role="alert"><%=wrongmsg%></div>
                                      
           <% 
               session.removeAttribute("Wrongmsg");
                                           
               }
         %>
         
         
         <div class="container">
             <h2 class="text-center" style="padding-top: 10px; font-family: cursive;">All Notes :</h2>
             <div class="row">
                 <div class="col-md-12">
                       <%
                             if(user3!=null){
                             PostDAO ob=new PostDAO(DBConnect.getConn());
                              List<Post> post =ob.getData(user3.getId());
                              for(Post po:post){
                              %>
                              <div class="card mt-3" style="background-color: white; ">
                      
                         
                                  <div class="card-body " style="border-style: solid; border-radius: 10px; padding-left:50px; padding-right: 50px; margin-left: 50px; margin-right: 50px;">
                           <img src="img/icon2.png" class="card-img-top mt-2 mx-auto" style="max-width:100px; ">
                             <h5 class="card-title"><%= po.getTitle()%></h5>
                             <p> <%= po.getContent()%></p>
                             <p>
                                 <b class="text-success">Published By: <%= user3.getName() %></b><br>
                                 <b class="text-primary"></b>
                             </p>
                             
                             <p>
                               <b class="text-success">Published Date: <%= po.getPdate()%></b><br>
                                 <b class="text-success"></b>
                                 
                             </p>
                             
                             
                             <div class="container text-center mt-2">
                                 <a href="DeleteServlet?note_id=<%=po.getId()%>" class="btn btn-danger">Delete</a>
                                 <a href="edit.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edit</a>
                             </div>
                         </div>
                     
                     </div>
                     
                                <% }
                                 }    
                             
                             %>
                     
                     
                 </div>
             </div>
             
         </div>
                              <%@include file="all_component/footer.jsp" %> 
    </body>
</html>
