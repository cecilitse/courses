var sticky_footer;

sticky_footer = function() {
  var footer, height, position;

  footer = $("footer");
  position = footer.position();

  height = $(window).height();
  height = height - position.top;
  height = height - footer.height();

  if (height > 0) {
    return footer.css({
      "margin-top": height + "px"
    });
  }
};

$(function() {
  return sticky_footer();
});
