// pages/event/event.js
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },


  // 事件绑定和事件对象 begin
  handler(e) {
    console.log(e)
  },

  getInputVal(e) {
    console.log(e.detail.value)
  },
  // 事件绑定和事件对象 end


  // 事件分类以及阻止事件冒泡 begin
  parentHandler() {
    console.log('父组件被触发')
  },

  btnHandler(e) {
    console.log(`子组件被触发(${e.target.dataset.method})`)
  },
  // 事件分类以及阻止事件冒泡 end


  // 事件传参-data-自定义数据 begin
  passingParamParentHandler(e) {
    console.log('target:', e.target.dataset.name)
    console.log('currentTarget:', e.currentTarget.dataset.name)
  },

  passingParamBtnHandler(e) {
    console.log('target:', e.target.dataset.name)
    console.log('currentTarget:', e.currentTarget.dataset.name)
  },
  // 事件传参-data-自定义数据 end


  // 事件传参-mark-自定义数据 begin
  markParentHandler(e) {
    console.log(e.mark)
  },
  // 事件传参-mark-自定义数据 end





  /**
   * 生命周期函数--监听页面加载
   */
  onLoad(options) {

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