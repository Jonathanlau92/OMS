$(function() {
  // limits the number of categories
  $('#line_items').on('cocoon:after-insert', function() {
    console.log("COCOON AFTER INSERT");
    check_to_hide_or_show_add_link();
  });

  $('#line_items').on('cocoon:after-remove', function() {
    check_to_hide_or_show_add_link();
  });

  check_to_hide_or_show_add_link();
  // check that nested form are at 8
  function check_to_hide_or_show_add_link() {
    if ($('#line_items .nested-fields').length > 8) {
      $('#line_items .links a').hide();
    } else {
      $('#line_items .links a').show();
    }
  }
})
