package com.Servlet;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import com.User.Post;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/AddNotesServlet")
public class AddNoteServlet extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int uid =Integer.parseInt(request.getParameter("uid"));
        String title = request.getParameter("title");
        String content=request.getParameter("content");
        
      PostDAO dao=new PostDAO(DBConnect.getConn());
      boolean f=dao.AddNotes(title, content,uid);
      if(f){
          System.out.print("Success");
          response.sendRedirect("showNotes.jsp");
      }
      else{
          System.out.print(" not Success");
      }
    }

}
