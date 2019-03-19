<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>经验贴_更新</title>
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
	            <p>更新经验贴</p>
	            <p>Update Note</p>
	        </div>
	        <div class="rg_form_center">
	
	            <!--更新经验贴表单-->
	            <form id="registerForm" method="post" action="UpdateNoteServlet">
	                <!--提交处理请求的标识符-->
	                <!--  <input type="hidden" name="action" value="register">-->
	                <input type="hidden" name="nid" value="${note.nid}">
	                <table style="margin-top: 25px;">
	                    <tr>
	                        <td class="td_left">
	                            <label for="ncategory">类别</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ncategory" name="ncategory" value="${note.ncategory}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="ntitle">标题</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ntitle" name="ntitle" value="${note.ntitle}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nuname">分享者</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nuname" name="nuname" value="${note.nuname}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="ntime">上传时间</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="ntime" name="ntime" value="${note.ntime}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nschool">录取院校</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nschool" name="nschool" value="${note.nschool}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="numajor">专业</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="numajor" name="numajor" value="${note.numajor}">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td class="td_left">
	                            <label for="nscore">分数</label>
	                        </td>
	                        <td class="td_right">
	                            <input type="text" id="nscore" name="nscore" value="${note.nscore}">
	                        </td>
	                    </tr>
	                    <tr>
							<td class="td_left">
								<label for="ncontent">内容</label>
							</td>
							<td class="td_right">
								<textarea id="editor" row="10" cols="20" name="ncontent">${note.ncontent}</textarea>
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
	<script type="text/javascript">CKEDITOR.replace("editor");</script>
	<!-- 导入底部 -->
	<div id="footer"></div>

</body>
</html>