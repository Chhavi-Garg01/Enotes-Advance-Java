<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp"%>
        <div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
				<div class="card-header text-center text-white">
				<h3><i class="fa fa-user-plus " aria-hidden="true"></i> </h3>
				<h4>Registration</h4> 
				</div>
                                    <%
                                        String msg=(String)session.getAttribute("Success");
                                        if(msg!=null){%>
                                        <div class="alert alert-success" role="alert">
                                            <%=msg%>  : Login <a href="login.jsp">  Click here  </a>
                                    </div>
                                       <% 
                                           session.removeAttribute("Success");
                                        }
                                  %>
                                  <%
                                        String msg1=(String)session.getAttribute("Failed");
                                        if(msg1!=null){%>
                                        <div class="alert alert-danger" role="alert">
                                         <%=msg1%>
                                    </div>
                                       <% 
                                         session.removeAttribute("Failed");
                                       }
                                  %>
                               <div class = "card-body">
				<form action="UserServlet" method="post">
				
					<div class="form-group">
					<label>Enter Name</label>
						 <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="fname"> 
					</div>
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
					
					<button type="submit" class="btn btn-primary badge-pill btn-block mt-4">Register</button>
				</form>
				</div>
				</div>

			</div>
		</div>
	</div>

    </body>
</html>
