 
 <!Doctype html>
 <!-- Form start -->
 
  <div class="container" style="width: 80%; margin:auto; " >
  <br>
   <h2>Add new Note</h2>
   <br>
   <form action="NewNoteServlet" method="POST">
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input type="text" class="form-control" id="title" name = "title" aria-describedby="emailHelp" required>
    
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note</label>
    <textarea id="content" class="form-control" style="height:200px" name = "content" required></textarea>
  </div>
 
 <div class="container text-center">
 <button type="submit" class="btn btn-primary">Add</button>
 </div>
  
</form>
  </div>
 
 <!-- Form End-->
 
