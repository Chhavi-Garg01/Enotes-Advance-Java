<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
				<div class="card-header text-center text-white">
				<h3><i class="fa fa-user" aria-hidden="true"></i>  </h3>
				<h4>Login</h4> 
				</div> 
                                     <% 
                                        String msgg=(String)session.getAttribute("Failed");
                                        if(msgg!=null){
                                     %>
                                     <div class="alert alert-danger" role="alert"><%=msgg%></div>
                                        <%
                                            session.removeAttribute("Failed");
                                            }
                                     %>
                                     
                                     <% 
                                        String without=(String)session.getAttribute("Login-Error");
                                        if(without!=null){
                                     %>
                                     <div class="alert alert-danger" role="alert"><%=without%></div>
                                        <%
                                            session.removeAttribute("Login-Error");
                                            }
                                     %>
                                     
                                     <%
                                     String lgmsg=(String)session.getAttribute("logoutmsg");    
                                     if(lgmsg!=null){%>
                                     <div class="alert alert-success" role="alert"><%=lgmsg%></div>
                                      
                                     <%session.removeAttribute("logoutmsg");
                                           }
                                     %>
                                     
				<div class = "card-body">
				<form action="loginServlet" method="post">
				
					<div class="form-group">
					<label>Enter Email</label>
						 <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="uemail"> 
					</div>
					<div class="form-group">
					<label for="exampleInputPassword1">Enter Password</label>
						 <input
							type="password" class="form-control" id="exampleInputPassword1" name="upassword">
					</div>
					
					<button type="submit" class="btn btn-primary badge-pill btn-block mt-4">Login</button>
				</form>
				</div>
				</div>

			</div>
		</div>
	</div>
    </body>
</html>

