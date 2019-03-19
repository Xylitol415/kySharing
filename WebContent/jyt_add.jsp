<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>经验贴_新增</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
    <link rel="stylesheet" href="css/newjyt.css">
	<script src="js/include.js"></script>
	<script src="plugin/ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>

	<!-- 导入头部 -->
	<div id="header"></div>
	<!-- 头部 end -->


	<!--
	           中间注册表单部分
	-->
	<div class="rg_layout">
	    <div class="rg_form clearfix">
	        <div class="rg_form_left">
	            <p>新增经验贴</p>
	            <p>New Note</p>
	        </div>
	        <div class="rg_form_center">
	
	            <!--新增经验贴表单-->
	            <form id="registerForm" method="post" action="AddNoteServlet">
	                <!--提交处理请求的标识符-->
	                <input type="hidden" name="action" value="register">
	                <table style="margin-top: 25px;">
	                    <tr>
	                        <td class="td_left">
	                            <label for="ncategory">类别</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ncategory" name="ncategory" placeholder="请输入经验贴类别">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="ntitle">标题</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ntitle" name="ntitle" placeholder="请输入标题">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nuname">分享者</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nuname" name="nuname" placeholder="请输入您的用户名">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="ntime">上传时间</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ntime" name="ntime" placeholder="请输入上传时间">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nschool">录取院校</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nschool" name="nschool" placeholder="请输入录取院校名称">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="numajor">专业</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="numajor" name="numajor" placeholder="请输入录取专业">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nscore">分数</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nscore" name="nscore" placeholder="请输入考研分数">
	                        </td>
	                    </tr>
	                    <tr>
							<td class="td_left">
								<label for="ncontent">内容</label>
							</td>
							<td class="td_right">
								<textarea id="editor" row="10" cols="20" placeholder="请在这里输入经验贴详细内容..." name="ncontent"></textarea>
							</td>
							
						</tr>
	                    <tr>
	                        <td class="td_left">
	                        </td>
	                        <td class="td_right check">
	                            <input type="submit" class="submit" value="添加">
	                            <span id="msg" style="color: red;"></span>
	                        </td>
	                    </tr>
	                </table>
	            </form>
	        </div>
	    </div>
	</div>
	<script type="text/javascript">CKEDITOR.replace("editor");</script>
	<!-- 导入底部 -->
	<div id="footer"></div>

</body>
</html>