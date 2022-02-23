<%@ page import="com.User.UserDetails"%>

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
                h2{
                 font-family: cursive;
                 color: orange;
                }
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddNote</title>
         <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <div class="container-fluid p-0">
             <%@include file="all_component/navbar.jsp" %>
             <h2 class="text-center" style="margin-top:10px;">ADD YOUR NOTE</h2>
             <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                     <form action="AddNotesServlet" method="post">
                        <div class="form-group">
                            <%
                             UserDetails us = (UserDetails)session.getAttribute("userD");  
                             if(us!=null){%>
                             <input type="hidden" value="<%=us.getId()%>" name="uid">
                             <%   }       
                                %>
                           <label for="exampleInputEmail1" >Enter Title<br><br><label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" style="width:1109px;" aria-describedby="emailHelp" name="title" required="required" >
                            </div>
                        <div class="form-group">
                             <label for="exampleInputEmail1">Enter Note<br></label>
                             <textarea  rows="9" cols="" class="form-control" name="content" required="required"></textarea>
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
