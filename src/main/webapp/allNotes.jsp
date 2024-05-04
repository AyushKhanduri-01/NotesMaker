<%@  page import="com.entities.FactoryProvider" %>
<%@  page import="org.hibernate.Session" %>
<%@  page import="org.hibernate.query.Query" %>
<%@  page import="com.entities.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
</head>
<body>
  -->
 <div class="container" class="notes">
    <%
        Session se = FactoryProvider.getFactory().openSession();
        Query q= se.createQuery("from Note");
        List<Note> allnote = q.list();     
        se.close();
        
        for(Note n : allnote){
        	String title = n.getTitle();
        	String content=n.getContent();
        	Date date = n.getDate();
        			 	
       %>
  <div class="card" class="container" class="notes" style="width: 80%; margin:auto; margin-top:10px" >
  <div class="card-body">
    <h5 class="card-title"><%=title %></h5>
    <h6 class="card-subtitle mb-2 text-muted"><%=date %></h6>
    <p class="card-text"><%=content %></p>
    <a href="DeleteNote?id=<%=n.getId() %>" class="btn btn-primary">Delete</a>
   <a href="edit.jsp?id=<%=n.getId() %>" class="btn btn-primary" id="Update">Update</a>
    
  </div>
</div>


        <%
    	
        }
     
    %>
 </div>
 
 <!-- 

</body>
</html>
  -->