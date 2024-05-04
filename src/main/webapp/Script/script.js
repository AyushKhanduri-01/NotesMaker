$(document).ready(function() {
   
    $("#main-container").load("allNotes.jsp");
    
    $("#addNote").click(function (e) {
      //  console.log("yesss");
        e.preventDefault();
        $("#main-container").load("addNote.jsp", function(response, status, xhr) {
            if (status == "error") {
                console.error("Error loading addNote.jsp:", xhr.statusText);
            }
        });
    });
    
    $("#showallnotes").click(function(e) {
        e.preventDefault();
        console.log("yesss");
        $("#main-container").load("allNotes.jsp", function(response, status, xhr) {
            if (status == "error") {
                console.error("Error loading allNotes:", xhr.statusText);
            }
        });
    });
    
  
    
     
});
