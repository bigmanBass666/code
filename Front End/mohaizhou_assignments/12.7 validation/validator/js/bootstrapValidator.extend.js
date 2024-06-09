/**
 * 莫海周增加自定义扩展boostrap-validator的验证方法,注册方法名称
 * 这个文件之前需要加入validateUtil.js文件
 *
 */

 (function($) {
    //验证手机号码
    $.fn.bootstrapValidator.i18n.ismobile = $.extend($.fn.bootstrapValidator.i18n.ismobile || {}, {
        'default': '手机号码不正确'
    });
    //validate是验证的方法
    $.fn.bootstrapValidator.validators.ismobile = {
        validate: function(validator, $field, options) {
            var value = $field.val();
            return mobile_check.check(value);
        }
    };

   //验证身份证号码
    $.fn.bootstrapValidator.i18n.isidcardno = $.extend($.fn.bootstrapValidator.i18n.isidcardno || {}, {
        'default': '身份证号码不正确'
    });
    //validate是验证的方法
    $.fn.bootstrapValidator.validators.isidcardno = {
        validate: function(validator, $field, options) {
            var value = $field.val();
            return idCardNoUtil.checkIdCardNo(value);

        }
    };


    //验证中文
    $.fn.bootstrapValidator.i18n.zw = $.extend($.fn.bootstrapValidator.i18n.zw || {}, {
        'default': '仅限中文'
    });
    //validate是验证的方法
    $.fn.bootstrapValidator.validators.zw = {
        validate: function(validator, $field, options) {
            var value = $field.val();
                var zw = /^[\u4e00-\u9fa5]{1,}$/;
        
                if(value===""||value===null||value===undefined){
                    return false;
                }
                if(zw.test(value)){
                    return true;
                }
                return false;
           
        }
    };

    //相加验证
    //需要在总分input中添加addList="v1,v2,v3"需要相加的input的name列表
    $.fn.bootstrapValidator.i18n.addValueValidator = $.extend($.fn.bootstrapValidator.i18n.addValueValidator || {}, {
        'default': '各数相加与总数不相等'
    });
    //validate是验证的方法
    $.fn.bootstrapValidator.validators.addValueValidator = {
        validate: function(validator, $field, options) {
            var value = $field.val();
            var addList=$field.attr("addList");
            var addListArrry=addList.split(",");
            return addValueValidator_check.check(value,addListArrry);
        }
    };
    //班级名称验证必须是20**或21**22**
    //需要在总分input中添加addList="v1,v2,v3"需要相加的input的name列表
    $.fn.bootstrapValidator.i18n.klassnameValidator = $.extend($.fn.bootstrapValidator.i18n.klassnameValidator || {}, {
        'default': '班级名称格式不对'
    });
    //validate是验证的方法
    $.fn.bootstrapValidator.validators.klassnameValidator = {
        validate: function(validator, $field, options) {
            var value = $field.val();
            return klassnameValidator_check.check(value,addListArrry);
        }
    };

}(window.jQuery));