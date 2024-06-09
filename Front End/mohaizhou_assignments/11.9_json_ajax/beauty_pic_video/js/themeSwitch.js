$(function () {
  $('.sun').click(function () {
    $('body').attr('data-theme', 'light')
    $(this).hide()
    $('.moon').show()
  })

  $('.moon').click(function () {
    $('body').attr('data-theme', 'dark')
    $(this).hide()
    $('.sun').show()
  })

  $(window).keyup(function (e) {
    if (e.key !== 's') {
      return
    }
    if ($('.sun').css('display') === 'block') {
      $('.sun').click()
    } else {
      $('.moon').click()
    }
  })
})