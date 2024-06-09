$(function () {
  $('.picBtn').click(function () {
    window.location.href = 'html/picture_page.html'
  })

  $('.vidBtn').click(function () {
    window.location.href = 'html/video_page.html'
  })

  $(window).keyup(function (e) {
    switch (e.key) {
      case 'p':
        $('.picBtn').click()
        break;
      case 'v':
        $('.vidBtn').click()
    }
  })
})