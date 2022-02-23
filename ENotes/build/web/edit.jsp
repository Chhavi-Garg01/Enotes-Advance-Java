<%@ page import="com.User.UserDetails"%>
<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.Db.DBConnect"%>
<%@ page import="com.User.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user1=(UserDetails)session.getAttribute("userD");  
if(user1==null){
response.sendRedirect("login.jsp");
session.setAttribute("Login-Error","Please Login...");
    }
%>

<html>
    <head>
         <style type="text/css">
                h1{
                 font-family: cursive;
                 color: orange;
                }
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Note</title>
         <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        
        <%
        Integer noteid=Integer.parseInt(request.getParameter("note_id") );   
        PostDAO post=new PostDAO(DBConnect.getConn());
        Post p= post.getDataById(noteid);
        %>
        <div class="container-fluid p-0">
             <%@include file="all_component/navbar.jsp" %>
             <h1 class="text-center">EDIT YOUR NOTE</h1>
             
             
             <div class="container">
                  <div class="row">
                 <div class="col-md-12">
                     <form action="NoteEditServlet" method="post">
                       
                         <input type="hidden" value="<%=noteid%>" name="noteid">
                         <div class="form-group">
                            
                                <label for="exampleInputEmail1" >Enter Title<br><br><label>
                                        <input type="text" value="<%= p.getTitle() %>" class="form-control" id="exampleInputEmail1" style="width:1109px;" aria-describedby="emailHelp" name="title" required="required" >
                          </div>
                         <div class="form-group">
                             <label for="exampleInputEmail1">Enter Note<br></label>
                             <textarea  rows="9" cols=""   class="form-control" name="content" required="required"><%= p.getContent() %></textarea>
                         </div>
                         <div class="container text-center">
                        <button type="submit" class="btn btn-primary">Add</button>
                         </div>
                     </form>
                 </div>
             </div>
             </div>
        </div>
    </body>
</html>
