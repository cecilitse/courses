(function() {
  window.onload = function() {
    var address, contactButton, contactButtons, mail, _i, _len, _results;
    mail = {
      a: 'Y29udGFjdA==',
      b: 'Y2VjaWxpdHNl',
      c: 'b3Jn'
    };
    address = window.atob(mail.a) + '@' + window.atob(mail.b) + '.' + window.atob(mail.c);
    contactButtons = document.querySelectorAll(".j-contact");
    _results = [];
    for (_i = 0, _len = contactButtons.length; _i < _len; _i++) {
      contactButton = contactButtons[_i];
      if (contactButton.innerHTML.length === 0) {
        contactButton.innerHTML = address;
      }
      _results.push(contactButton.setAttribute("href", "mailto:" + address));
    }
    return _results;
  };

}).call(this);
