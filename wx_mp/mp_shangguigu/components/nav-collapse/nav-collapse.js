Component({
  properties: {
    // 折叠时显示的标题
    header: {
      type: String,
      value: 'default header'
    },

    // 导航对象数组
    navigatorInfo: {
      type: Array,
      value: [
        // 导航对象
        { url: '/default/url', navigatorText: 'default navigator text1', openType: 'navigate' },
        { url: '/default/url', navigatorText: 'default navigator text2', openType: 'navigate' }
      ]
    },
  },

  data: {
    // 是否处于折叠状态
    isCollapsed: true,
  },

  methods: {
    toggleBody() {
      // 取反
      const isCollapsed = !this.data.isCollapsed

      this.setData({
        isCollapsed
      })
    }
  },
})