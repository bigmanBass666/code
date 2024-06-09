#### boostrap-select 使用方法

 详细文档：https://www.cnblogs.com/zjhblogs/p/6667695.html

##### 1.head中加载插件文件
	<link rel="stylesheet" href="boostrap\css\bootstrap.css">
	<link rel="stylesheet" href="select\css\bootstrap-select.css">
	
	<script src="jquery-3.6.0.js" type="text/javascript"></script>
	<script src="boostrap\js\bootstrap.js" type="text/javascript"></script>
	<script src="select\js\bootstrap-select.js" type="text/javascript"></script>

##### 2.html代码
	<select name="grade" multiple id="se-grade">
	                <option value="1">
	                    高一
	                </option>
	                <option value="2">
	                    高二
	                </option>
	                <option value="3">
	                    高三
	                </option>
	        </select>

##### 3.js初始化插件及设置参数
            //初始化
            $("#se-grade").selectpicker({
                noneSelectedText:"请选择年级",//下来框默认文字 
                title:"年级选择", //功能和上面noneSelectedText一样    
                styleBase:"btn btn-default", //基础样式
                style:"btn btn-info",//下拉框显示整体样式"默认btn-default"
                tickIcon:'glyphicon-star', //更改选中的图标  默认是glyphicon-ok
                actionsBox:true,
                deselectAllText:"取消全选", //actionsBox为true才有用
                selectAllText:"全选", //actionsBox为true才有用
    
                header:"年级选择",  //option面板标题（增加会包含一个关闭按钮），可以为空。    
                liveSearch:true, //增加一个搜索框
                //liveSearchStyle:"contains", //contains包含式搜索 ，startsWith开头包含搜索
                liveSearchPlaceholder:"请搜索",  //搜素框中的提示文字
                noneResultsText:"无此选项", //搜索不到数据时显示文字
                //size:3,//下拉菜单最多显示的项
                virtualScroll:3,//不知道什么用
                windowPadding:100,
                maxOptions:2,//最多可以选中项数目
            })