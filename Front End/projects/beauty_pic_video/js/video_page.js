$(function () {
  const url = 'https://api.qqsuu.cn/api/dm-xjj'
  const apiKey = '4f0f122e5ef7888c753962c61bdf9a6f'

  function showGotVideo() {
    $.get(`${url}?type=json&apiKey=${apiKey}`, function (response) {  // 返回的是JavaScript对象??????
      response = JSON.parse(response)
      $('video').attr('src', response.video)
    })
  }

  showGotVideo()

  $('#nextBtn').click(function () {
    showGotVideo()
  })

  // 快捷键
  $(window).on('keyup', function (e) {
    switch (e.key) {
      case 'n':  // 下一个视频
      case 'ArrowDown':
        $('#nextBtn').click()
        break;
      case ' ':  // 暂停/播放视频
        if ($('video')[0].paused) {
          $('video')[0].play();
        } else {
          $('video')[0].pause();
        }
        break
      case 'Backspace':  // 返回首页
      case 'b':
        window.location.href = '../index.html'
    }
  })
});