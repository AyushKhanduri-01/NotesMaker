<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="jakarta.servlet.*" %>
<%@  page import="com.entities.FactoryProvider" %>
<%@  page import="org.hibernate.Session" %>
<%@  page import="org.hibernate.query.Query" %>
<%@  page import="com.entities.Note" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditNote</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="Stylesheet" href="CSS/style.css">
    
    
     <script src="https://code.jquery.com/jquery-3.7.1.js"></script>     
      <script src="Script/script.js"></script>
     
    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</head>
<body>
<!-- Form start -->
 <%
  int id = Integer.parseInt(request.getParameter("id"));
  Session se = FactoryProvider.getFactory().openSession();
	
	Note n = se.get(Note.class,id);
	
  
 %>
 
  <div class="container" class=""notes">
   <h2>Edit Your Note</h2>
   <br>
   <form action="UpdateServlet" method="POST">
  <div class="mb-3">
     <input value=<%=n.getId() %> name="id"  type="hidden" >
    <label for="title" class="form-label">Note title</label>
    <input type="text" class="form-control" id="title" name = "title" aria-describedby="emailHelp"  value="<%=n.getTitle() %>" required>
    
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note</label>
    <textarea id="content" class="form-control" style="height:200px" name = "content"  required><%= n.getContent()%></textarea>
  </div>
 
 <div class="container text-center">
 <button type="submit" class="btn btn-primary">Add</button>
 </div>
  
</form>
  </div>
 
 
 <!-- Form End-->
 
 
</body>
</html>