$(document).ready(function(){
	$('.edit-comment').click( function(e){
		e.preventDefault();
		doALittleAjax(this);
	});

	$('form').on('submit', function(){
		var valuesToSubmit = $('.edit_comment').serialize();
		alert(valueToSubmit);
		// $.ajax({
  //   	url: $('#mail-form').attr('action'), //sumbits it to the given url of the form
  //   	data: valuesToSubmit,
  //   	dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
  //   }).success(function(json){
  //   //act on result.
  // });
	});
});

var doALittleAjax = function(thing){
	$.ajax({
		url: "/comments/1/edit"
	}).done(function(response) {
		$(thing).parent().replaceWith(response);
	});
};


