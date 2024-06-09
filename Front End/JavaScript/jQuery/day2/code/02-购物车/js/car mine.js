$(function () {
    // 全选
    $('.checkall').click(function () {
        // 选中商品项变色
        // if ($('.j-checkbox:checked').length === 3) {  // * 判断选中商品数量是否等于3可换成--判断全选按钮是否选中
        if ($(this).prop('checked') === true) {
            $('.cart-item').addClass('check-cart-item')
        } else {
            $('.cart-item').removeClass('check-cart-item')
        }

        // $('.j-checkbox').prop('checked', $(this).prop('checked'))
        // $('.checkall').prop('checked', $(this).prop('checked'))

        // * 可以这样 (要善于运用并集选择器)
        $('.j-checkbox, .checkall').prop('checked', $(this).prop('checked'))
    })

    $('.j-checkbox').click(function () {
        // 全选按钮状态
        if ($('.j-checkbox:checked').length === 3) {
            $('.checkall').prop('checked', true)
        } else {
            $('.checkall').prop('checked', false)
        }
        
        // 选中商品项变色
        if ($(this).prop('checked') === true) {
            $(this).parents('.cart-item').addClass('check-cart-item')
        } else {
            $(this).parents('.cart-item').removeClass('check-cart-item')
        }
    })
    // 全选


    // 增减商品数量
    $('.increment').click(function () {
        const input = $(this).siblings('input') 
        let value = +input.val()
        // input.val(`${value++}`)
        input.val(++value)
        // input.val()
    })

    $('.decrement').click(function () {
        const input = $(this).siblings('input') 
        let value = +input.val()
        if (value > 1) {
            input.val(--value)
        }
    })
    // 增减商品数量


    // 修改商品小计分析
    $('.increment, .decrement').click(function () {
        const price = +$(this).parents('.p-num').siblings('.p-price').text().substr(1)  // 去掉$符号
        const num = +$(this).siblings('input').val()
        const sumArea = $(this).parents('.p-num').siblings('.p-sum')
        let sum = ( price*num ).toFixed(2)  // 保留两位小数
        sumArea.html('$ ' + sum)

        getSum()
    })

    $('.itxt').change(function () {
        const price = +$(this).parents('.p-num').siblings('.p-price').text().substr(1)  // 去掉$符号
        const num = +$(this).val()
        const sumArea = $(this).parents('.p-num').siblings('.p-sum')
        let sum = ( price*num ).toFixed(2)  // 保留两位小数
        sumArea.html('$ ' + sum)

        getSum()
    })
    // 修改商品小计分析


    // 计算总计和总额
    function getSum() {
        const amountSumArea = $('.amount-sum em')
        const priceSumArea = $('.price-sum em')
        let amountSum = 0
        let priceSum = 0

        $('.itxt').each(function (i, elm) {  // 商品总数
            amountSum += +$(elm).val()
        })

        $('.p-sum').each(function (i, elm) {  // 总价
            priceSum += +$(elm).text().substr(1)
        })

        amountSumArea.html(amountSum)
        priceSumArea.html(priceSum.toFixed(2))
    }
    // 计算总计和总额


    // 删除商品模块 >

    // 1. 商品后面的删除按钮
    $('.p-action').click(function () {
        $(this).parent().remove()
        // $(this).parent().fadeOut()
        // $(this).parent().slideToggle()
    })
    // 1. 商品后面的删除按钮

    // 2. 删除选中的商品 
    $('.remove-batch').click(function () {
        $('.j-checkbox:checked').parents('.check-cart-item').remove()
    })
    // 2. 删除选中的商品 

    // 3. 清理购物车
    $('.clear-all').click(function () {
        $('.cart-item').remove()
    })
    // 3. 清理购物车

    // 删除商品模块 >
})