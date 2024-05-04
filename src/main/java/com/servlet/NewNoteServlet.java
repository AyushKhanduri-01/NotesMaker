package com.servlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.util.*;
import java.io.IOException;

import org.hibernate.Session;

import com.entities.FactoryProvider;
import com.entities.Note;

public class NewNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NewNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Note newnote = new Note(title,content,new Date());
		
		// No Dao layer required direct use hibernate....
		
		Session factory = FactoryProvider.getFactory().openSession();
		factory.beginTransaction();
		factory.save(newnote);
		factory.getTransaction().commit();
		factory.close();
		
		response.sendRedirect("index.jsp");
	}

}
