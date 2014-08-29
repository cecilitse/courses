window.onload = ->
  mail =
    a: 'Y29udGFjdA==' # contact
    b: 'Y2VjaWxpdHNl' # cecilitse
    c: 'b3Jn'         # org

  address         = window.atob(mail.a) + '@' + window.atob(mail.b) + '.' + window.atob(mail.c)
  contactButtons  = document.querySelectorAll(".j-contact")

  for contactButton in contactButtons
    if contactButton.innerHTML.length == 0
      contactButton.innerHTML = address
    contactButton.setAttribute "href", "mailto:" + address
