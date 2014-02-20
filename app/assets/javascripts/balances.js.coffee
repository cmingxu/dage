# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#




$(document).on 'change', $("#balance_reason"), () ->
  $("#detail_reason").load "/admin/reasons/" + $("#balance_reason").val() + "/detail_reason"
  


$(document).on 'ready', () ->
  $("#balance_reason").trigger 'change'
