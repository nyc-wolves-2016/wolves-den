$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $(".wolfpup").on("click", function(event){
  	event.preventDefault();
  	$.ajax({
  		url: $(event.target).attr('href'),
  		method: "get",
  	}).done(function(response){
  		$(event.target).after(response);
  		// debugger
  		// console.log(response);
  	})
  	// console.log(response);
  });
  console.log(event.target);
});
