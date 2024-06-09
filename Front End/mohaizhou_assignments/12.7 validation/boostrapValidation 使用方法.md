#### boostrapValidation 使用方法

使用指南：https://mrbird.cc/BootstrapValidator%E6%8C%87%E5%8D%97.html

https://blog.csdn.net/wangtongxue123456/article/details/77098054

##### 1.挂载插件

	<link href="css\bootstrap.min.css" rel="stylesheet" />        
	<link href="css\bootstrapValidator.min.css" rel="stylesheet" />


    <script src="js\jquery.min.js" type="text/javascript"></script>
    <script src="js\bootstrap.min.js" type="text/javascript"></script>
    
    <script src="js\validateUtil.js"></script>     <!--验证扩展的方法，非必须，当需要自己扩展验证方法时-->
    <script src="js\bootstrapValidator.min.js" type="text/javascript"></script>
    <script src="js\bootstrapValidator.extend.js"></script>  <!--验证扩展，非必须，当需要自己扩展验证方法时-->

##### 2.html需要验证的表单写在form标签范围中，每一个表单必须有** name**属性值

	<form class="form-horizontal bv-form" novalidate="novalidate">
	     <div class="form-group">
	          <label >姓名：</label>
	          <input type="text" class="form-control" name="username"> 
	     </div>
	     <div class="form-group">
	          <label >性别</label>
	          <label >男：<input type="radio" name="sex" value="男"></label>
	          <label >女：<input type="radio" name="sex" value="女" ></label>                
	     </div>
	</form>
##### 3.js中初始化
	//1.初始化验证
	        $('form').bootstrapValidator({  
	            excluded: [":disabled"], //需要排除的元素 
	            feedbackIcons: { //验证图标
	                valid: 'glyphicon glyphicon-ok',  //验证成功打钩
	                invalid: 'glyphicon glyphicon-remove', //验证失败打叉
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields:{  //验证表单项目及验证类型，警告信息
	                username:{
	                    message: '用户名验证失败',
	                    validators:{
	                        notEmpty:{  //写在html是required
	                            message: '用户名不能为空'
	                        },
	                        stringLength: {
	                        min: 2, //写在html中是minlength="2" data-bv-minlength-message="XXX"
	                        max: 4,
	                        message: '用户名长度必须在2到4位之间'
	                        },
	                    }
	                },
	                sex:{
	                    validators:{
	                        notEmpty:{  //写在html是required
	                            message: '必填项请填写'
	                        },
	                    }
	                }
	            }
	        });

##### 4.使用注意点：
	  A.验证写在js中，元素必须已经确定，如果是已经确定的html文件使用js的方法集中写验证。
	  B.如果是生成的html无法确定的表单，你就把验证规则写在生成的html中。
