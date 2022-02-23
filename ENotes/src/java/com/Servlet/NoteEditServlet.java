package com.Servlet;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/NoteEditServlet")
public class NoteEditServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try{
         Integer noteid=Integer.parseInt(request.getParameter("noteid"));
     String Title=request.getParameter("title");
     String Content=request.getParameter("content");
    PostDAO dao=new PostDAO(DBConnect.getConn());
    boolean f =dao.PostUpdate(noteid,Title,Content);
     if(f){
        HttpSession session= request.getSession();
        session.setAttribute("updatemsg","Note Updated Successfully");
        response.sendRedirect("showNotes.jsp");
      }
    
      }
     catch(Exception e){
         e.printStackTrace();
     }
 }
}
