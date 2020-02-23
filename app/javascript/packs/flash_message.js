$(document).on("turbolinks:load", function() {
  $(".message.closable .close.icon").click(function(){
  	$('.message.closable').fadeOut("slow")
  	false
  })
})
