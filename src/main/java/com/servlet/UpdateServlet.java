package com.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Date;



import org.hibernate.Session;

import com.entities.FactoryProvider;
import com.entities.Note;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			 
			
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int id = Integer.parseInt(request.getParameter("id"));
			
			Note newnote = new Note(id,title,content,new Date());
			
			// No Dao layer required direct use hibernate....
			
			Session factory = FactoryProvider.getFactory().openSession();
			factory.beginTransaction();
			factory.merge(newnote);
			factory.getTransaction().commit();
			factory.close();
			
			response.sendRedirect("index.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
