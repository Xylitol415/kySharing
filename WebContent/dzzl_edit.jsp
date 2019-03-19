<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>电子资料_修改</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
    <link rel="stylesheet" href="css/register.css">
	<script src="js/include.js"></script>
</head>
<body>


	<!-- 导入头部 -->
	<div id="header"></div>
	<!-- 头部 end -->
	
	
	<!--
	           中间注册表单部分
	-->
	<div class="rg_layout">
	    <div class="rg_form clearfix" style="height:450px;margin:250px">
	        <div class="rg_form_left">
	            <p>修改电子资料</p>
	            <p>Update EResources</p>
	        </div>
	        <div class="rg_form_center">
	
	            <!--注册表单-->
	            <form id="registerForm" method="post" action="UpdateEResourcesServlet">
	                <!--提交处理请求的标识符-->
	                <input type="hidden" name="eid" value="${ers.eid}">
	                <table style="margin-top: 25px;">
	                    <tr>
	                        <td class="td_left">
	                            <label for="ecategory">类别</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ecategory" name="ecategory"  value="${ers.ecategory}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="etitle">标题</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="etitle" name="etitle" value="${ers.etitle}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="euname">分享者</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="euname" name="euname" value="${ers.euname}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="etime">上传时间</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="etime" name="etime" value="${ers.etime}">
	                        </td>
	                    </tr>
						<tr>
	                        <td class="td_left">
	                            <label for="elink">下载链接</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="elink" name="elink" value="${ers.elink}">
	                        </td>
	                    </tr>
	                                      
	                    <tr>
	                        <td class="td_left">
	                        </td>
	                        <td class="td_right check">
	                            <input type="submit" class="submit" value="更新">
	                            <span id="msg" style="color: red;"></span>
	                        </td>
	                    </tr>
	                </table>
	            </form>
	        </div>
	    </div>
	</div>
	
	<!-- 导入底部 -->
	<div id="footer"></div>

</body>
</html>