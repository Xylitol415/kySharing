<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--
        二手纸质资料分类显示页面
-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>纸质资料</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-table.js" type="text/javascript"></script>
    <script src="js/bootstrap-table-zh-CN.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
    <script src="js/include.js"></script>

</head>
<body>
	<!-- 导入头部 -->
	<div id="header"></div>
	<br>
	<!-- 头部 end -->

	<!--
	        中间部分：纸质资料显示
	        采用div布局，一行显示四条数据
	
	-->

	<div class="row" >
	
	    <!--
	    一块div， 用于显示数据库中的一条数据，包含：
	            资料类别（政治、数学、英语、专业课等）
	            资料描述
	            资料图片
	            卖出价格
	            卖出状态（已卖出或未卖出）
	            联系方式
	            账户号（支付宝账号或银行卡号）
	      第一条记录 显示结束 start
	    -->
	    <div class="col-sm-6 col-md-3" style="float:left">
		    <div class="thumbnail">
	            <img src="./images/zzzl00.jpg" 
	            alt="标题图">
	            <div class="caption">
	                <h3>丰富的二手资料</h3>
	                <p>  这里有考研成功的高分学长学姐们使用过的书籍资料，也有诚心转让二手资料的童鞋，走过路过千万不要错过！</p>
	                <br>
	                <p>资料十分抢手，各位想要购买的同学注意电话联系资料主人，请务必沟通后再行付款购买，支付方式见图片下方信息。</p>
	            </div>
		    </div>
		</div>
		<c:forEach items="${list}" var="prs">
		    <div class="col-sm-6 col-md-3" >
		        <div class="thumbnail">
		            <!--  src：数据库中 资料图片路径 -->
		            <img src="${prs.pimg }"
		                 alt="二手资料缩略图">
		            <div class="caption">
		                <!--  数据库中 资料类别 -->
		                <h3>${prs.pcategory}</h3>
		                <!--  数据库中  资料描述-->
		                <p>${prs.pinfo }</p>
		                <p style="font-size: 16px">
		                    <span class="glyphicon glyphicon-earphone label label-primary"  style="text-align: center">&nbsp;联系方式</span>&nbsp;${prs.pphone }
		                </p>
		                <p style="font-size: 16px">
		                    <span class="glyphicon glyphicon-tag label label-info" style="text-align: center">&nbsp;出售状态</span>&nbsp;${prs.pstate }
		                </p>
		                <p style="font-size: 16px">
		                    <span class="glyphicon glyphicon-yen label label-danger" style="text-align: center">&nbsp;期待价格</span>&nbsp;${prs.pprice }
		                </p>
		                <p style="font-size: 16px">
		                    <span class="glyphicon glyphicon-user label label-success" style="text-align: center">&nbsp;支付账户</span>&nbsp;${prs.paccount }
		                </p>
		            </div>
		        </div>
		    </div>
		</c:forEach>
	</div>
	<!--  第一条记录 显示结束 end-->
	
	<!-- 导入底部 -->
	<div id="footer"></div>	
	    
</body>
</html>