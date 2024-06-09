### boostrapdatetimepicker使用方法

#### Bootstrap中的datetimepicker用法总结,详细完整参数请看链接[https://blog.csdn.net/hizzyzzh/article/details/51212867#2-_E5_AE_98_E6_96_B9_E6_96_87_E6_A1_A3]

#### 1.挂载文件
	<!--第一步挂载插件文件-->
	<link rel="stylesheet" href="boostrap\css\bootstrap.css"/> 
	<link href="bootstrap-datepicker\css\bootstrap-datetimepicker.css" rel="stylesheet"/>
	
	<script src="jquery-3.6.0.js" type="text/javascript"></script>
	<script src="boostrap\js\bootstrap.js" type="text/javascript"></script>
	
	<script src="bootstrap-datepicker\js\bootstrap-datetimepicker.js"></script>
	<script src="bootstrap-datepicker\js\bootstrap-datetimepicker.zh-CN.js"></script>    

#### 2.html代码
	<input type="text" id="datetimepicker1" name="bd1" class="form-control datetimepicker" ><!--id是随便取得-->

#### 3.js初始化
	$("#datetimepicker2").datetimepicker({                      
	            language:'zh-CN',//语言
	            format:'yyyy/mm/dd',
	            minView:2,    //支持最小的视图 世纪  年  月 日  时  分
	            maxView:3,  //最大选择视图范围 4是世纪
	            startView:2,//默认打开视图
	            minuteStep:1,//小时视图中每个时间间隔N分钟                
	        //0 or 'hour' for the hour view //选择分钟  
	        // 1 or 'day' for the day view //选择小时
	        // 2 or 'month' for month view (the default)//选择日
	        // 3 or 'year' for the 12-month overview //选择月
	        // 4 or 'decade' for the 10-year overview. Useful for date-of-birth datetimepickers.
	            weekStart:0, //一周从哪一天开始
	            autoclose:true, //选好时间后自动关闭
	            todayBtn:true, //显示今日按钮
	            todayHighlight:true,//高亮显示今天的日期
	            showMeridian:true,  //分day视图显示上下午选择小时
	            // startDate:'2000-10-11',
	            // endDate:'2023-10-11',
	            keyboardNavigation:false,
	            initialDate:new Date() ,//'2019-10-11 20:15:11',//'2019-10-11 20:15:11'//默认显示的日期时间 ，默认值     
	        });
