//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    containerStyle: '',
    containerStyle1: '',
  },
  onLoad: function () {
    this.animate('#container', [
      { opacity: 1.0, rotate: 0, backgroundColor: '#FF0000' },
      { opacity: 0.5, rotate: 45, backgroundColor: '#00FF00' },
      { opacity: 1.0, rotate: 90, backgroundColor: '#FF0000' },
    ], 5000)
    this.animate('.block', [
      { scale: [1, 1], rotate: 0, ease: 'ease-out' },
      { scale: [1.5, 1.5], rotate: 45, ease: 'ease-in'},
      { scale: [2, 2], rotate: 90 },
    ], 5000)
  },


  change: function () {
    this.animate('#container1', [
      { opacity: 1.0, rotate: 0, backgroundColor: '#FF0000' },
      { opacity: 0.5, rotate: 45, backgroundColor: '#00FF00', offset: 0.9},
      { opacity: 0.0, rotate: 90, backgroundColor: '#FF0000' },
      ], 5000, function () {
        this.clearAnimation('#container1', { opacity: true, rotate: true }, function () {
          console.log("清除了#container上的动画属性")
        })
    }.bind(this))
    this.animate('.block1', [
      { scale: [1, 1], rotate: 0, ease: 'ease-out'  },
      { scale: [1.5, 1.5], rotate: 45, ease: 'ease-in', offset: 0.9},
      { scale: [2, 2], rotate: 90},
    ], 5000, function () {
      this.clearAnimation('.block1', { scale: true, rotate: true}, function () {
        console.log("清除了.block1上的动画属性")
      })
    }.bind(this)
    )
  },

})
