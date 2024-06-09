$(function () {
    $('.picBtn').click(function () {
        window.location.href = 'html/picture_page.html'
    })

    $('.vidBtn').click(function () {
        window.location.href = 'html/video_page.html'
    })

    // audio player
    const audio = $('#audioPlayer')[0]
    const playButton = $('#playButton')

    playButton.click(function () {
        if (audio.paused) {
            audio.play()
            $('.playSvg').hide()
            $('.pauseSvg').show()
        } else {
            audio.pause()
            $('.pauseSvg').hide()
            $('.playSvg').show()
        }
    })

    $(window).keyup(function (e) {
        switch (e.key) {
            case 'p':
                $('.picBtn').click()
                break
            case 'v':
                $('.vidBtn').click()
            case ' ':
                playButton.click()
        }
    })
})
