// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    swiperList: [],
    awesomeList: [
      { id: 1, imgSrc: "https://www.ntet.cn/uploads/images/20230511/20230511104256_26729.png" },
      { id: 2, imgSrc: "https://www.ntet.cn/uploads/images/20230511/20230511104246_64074.jpg" },
      { id: 3, imgSrc: "//i1.hdslb.com/bfs/archive/93e4816a4c3ca460a42b92a1fa0503573b1e7f27.jpg@672w_378h_1c_!web-search-common-cover" }
    ],
    gridList: [
      {
        id: 1,
        name: '神鹰',
        icon: '/images/tabs/contact.png'
      },
      {
        id: 2,
        name: '黑手',
        icon: '/images/tabs/message.png'
      },
      {
        id: 3,
        name: '我',
        icon: '/images/tabs/home.png'
      },
      {
        id: 4,
        name: '让你',
        icon: '/images/tabs/message.png'
      },
      {
        id: 5,
        name: '飞起来',
        icon: '/images/tabs/home.png'
      },
      {
        id: 6,
        name: '敢不敢',
        icon: '/images/tabs/contact.png'
      },
      {
        id: 7,
        name: '跟我',
        icon: '/images/tabs/home.png'
      },
      {
        id: 8,
        name: '比划',
        icon: '/images/tabs/message.png'
      },
      {
        id: 9,
        name: '比划',
        icon: '/images/tabs/contact.png'
      },
    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {
  },

  getSwiperList() {
    for (let index = 0; index < 3; index++) {
      wx.request({
        url: 'https://api.qqsuu.cn/api/dm-touxiang?apiKey=e81742587696f95611872ca64198670e',
        method: 'GET',
        success: (resp) => {
          const imgObj = { id: index + 1, imgSrc: resp.data.data }

          this.data.swiperList.push(imgObj)

          // console.log('❤❤ ~ getSwiperList ~ this.data.swiperList:', this.data.swiperList)
        }
      })
    }
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady() {
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage() {

  }
})