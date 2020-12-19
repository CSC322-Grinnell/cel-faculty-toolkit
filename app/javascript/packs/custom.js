$('#user').hide()
$( document ).ready(function() {
    
    
    console.log( "ready!" );
    $('#user').hover(function() {
    $('#popup').show();
}, function() {
   $('#popup').hide();
});

$('[data-toggle="tooltip"]').tooltip()


$('#abc').carousel({
  interval:5000
})


});




