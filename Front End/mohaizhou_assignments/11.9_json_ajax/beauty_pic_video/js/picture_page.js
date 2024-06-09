$(function () {
  const url = 'https://api.qqsuu.cn/api/dm-littlesister'
  const apiKey = 'f360aa2118c0875243b2cce940eaede8'

  function showGotPic() {
    $.get(`${url}?type=json&apiKey=${apiKey}`, function (response) {
      $('img').attr('src', response.img)
      $('#picLink').attr('href', response.img)
    })
  }

  showGotPic()

  $('#nextBtn').click(function () {
    showGotPic()
  })

  // 快捷键
  $(window).on('keyup', function (e) {
    switch (e.key) {
      case 'n':  // 下一张图片
      case 'ArrowDown':
        $('#nextBtn').click()
        break;
      case 'Backspace':  // 返回首页
      case 'b':
        window.location.href = '../index.html'
    }
  })
});