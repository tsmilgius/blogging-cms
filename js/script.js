$(document).ready(function() {
    $("#to-register").click(function() {
        $("#login-modal").modal("toggle");
    });
});

$(document).ready(function() {
    $("#to-login").click(function() {
        $("#register-modal").modal("toggle");
    });
});


$(document).ready(function(){
$("#hello-login-popup").click(function(){
    $("#hello-login-popup").hide();
});
});
/*$('#registration-outcome').hide();*/

/*$('#registration-outcome').hide();*/

$(document).ready(function(){
    $("#hello-login-popup").click(function(){
        $("#hello-login-popup").hide();
    });
});





$(document).ready(function(){
  $("#toggle-filter-div").click(function(){
    if ( $('#filter-div').css('visibility') == 'hidden' )
      $('#filter-div').css('visibility','visible');
    else
      $('#filter-div').css('visibility','hidden');
  });
    
});
