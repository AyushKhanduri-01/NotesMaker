package com.servlet;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;

import org.hibernate.Session;

import com.entities.FactoryProvider;
import com.entities.Note;

public class DeleteNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteNote() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = (Integer.parseInt(request.getParameter("id")));
		System.out.print(id);
		
		Session session = FactoryProvider.getFactory().openSession();
		
		Note n = session.get(Note.class,id);
		System.out.print(n.getTitle());
		session.beginTransaction();
		session.delete(n);
		session.getTransaction().commit();
		session.close();

		response.sendRedirect("index.jsp");
		
		
	}

	
}
