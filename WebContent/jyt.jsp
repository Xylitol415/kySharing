<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--
        经验贴分类显示页面
-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>经验贴</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-table.js" type="text/javascript"></script>
    <script src="js/bootstrap-table-zh-CN.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
	<script src="js/include.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
	<script type="text/javascript">
	function doDelete(nid){
		/*如果弹出的对话框，用户点击的是确定，马上去请求Servlet
		*/
		var flag = confirm("是否确定删除？");
		if(flag){
			// 表明点了确定，访问servlet，在当前页面上打开超链接
			window.location.href="DeleteNoteServlet?nid="+nid;
		}
	}
	</script>
	
</head>
<body>

	<!-- 导入头部 -->
	<div id="header"></div>
	<!-- 头部 end -->

	<!--
	        中间部分：经验贴显示
	        bootstrap表格 table-bordered 表格边框 table-striped 条纹间隔 table-hover 表格悬停
	-->
	<form method="post" action="SearchNoteServlet">
		<!-- 条件查询输入框 -->
		<div class="panel-body" style="padding-bottom:20px; padding-top:20px">
		    <div class="panel panel-default">
		        <div class="panel-heading">查询条件</div>
		        <div class="panel-body">
		                <div class="form-group" style="margin-top:15px">
		                    <label class="control-label col-sm-1" for="txt_search_departmentname">录取院校</label>
		                    <div class="col-sm-3">
		                        <input type="text" class="form-control" id="txt_search_departmentname" name="nschool">
		                    </div>
		                    <label class="control-label col-sm-1" for="txt_search_statu">科目类别</label>
		                    <div class="col-sm-3">
		                        <input type="text" class="form-control" id="txt_search_statu" name="ncategory">
		                    </div>
		                    <div class="col-sm-4" style="text-align:left;">
		                        <button type="submit" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
		                    </div>
		                </div>
		        </div>
		    </div>
	    </div>
	</form>
	
	<table id="exp_note" class="table table-bordered table-striped table-hover">
	    <caption style="font-size: 24px;color: #000; line-height: 28px;">&nbsp;经验贴分类列表</caption>
	
	    <!-- 表格列标题栏  不用改动 -->
	    <thead>
	    <tr>
	        <th style="vertical-align: middle !important;text-align: center;">分享者</th>
	        <th style="vertical-align: middle !important;text-align: center;">录取院校</th>
	        <th style="vertical-align: middle !important;text-align: center;">考研成绩</th>
	        <th style="vertical-align: middle !important;text-align: center;">类别</th>
	        <th style="vertical-align: middle !important;text-align: center;">标题</th>
	        <th style="vertical-align: middle !important;text-align: center;">分享时间</th>
	        <th style="vertical-align: middle !important;text-align: center;">操作</th>
	    </tr>
	    </thead>
	
	    <!-- 表格主体部分  从数据库查询所得数据显示在此处--> 
	    <tbody style="text-align: center">
		    <c:forEach items="${list}" var="note">
			    <tr>
			        <td>${note.nuname}</td>
			        <td>${note.nschool}</td>
			        <td>${note.nscore}</td>
			        <td>${note.ncategory}</td>
			        <td>${note.ntitle}</td>
			        <td>${note.ntime}</td>
			        <td>
			            <div class="btn-group">
			                <a href="ViewNoteServlet?nid=${note.nid}">
				                <button  type="button" class="btn btn-success"  data-toggle="tooltip"  title="查看">
				                    <span class="glyphicon glyphicon-eye-open"></span>
				                </button>
			                </a>
			                <a href="jyt_add.jsp">
				                <button  type="button" class="btn btn-info" data-toggle="tooltip"  title="新增">
				                    <span class="glyphicon glyphicon-plus"></span>
				                </button>
			                </a>
			                <c:if test="${sessionScope.urole=='2'}">
			                <a href="EditNoteServlet?nid=${note.nid}">
				                <button  type="button" class="btn btn-warning" data-toggle="tooltip"  title="修改">
				                    <span class="glyphicon glyphicon-pencil"></span>
				                </button>
			                </a>
			                <a href="#" onclick="doDelete(${note.nid})">
				                <button  type="button" class="btn btn-danger" data-toggle="tooltip"  title="删除">
				                    <span class="glyphicon glyphicon-remove"></span>
				                </button>
			                </a>
			                </c:if>
			            </div>
			        </td>
			    </tr>
		    </c:forEach>
	    </tbody>
	
	    <!--表格底部  分页信息-->
	    <tfoot>
	    <tr>
	        <td colspan="8" style="font-size:18px" align="center">
	            <a href="NoteListPageServlet?currentPage=1">
		            <button  type="button" class="btn btn-primary">
		            	<span class="glyphicon glyphicon glyphicon-th-list">&nbsp;分页显示</span>
		            </button>
	            </a>
	        </td>
	    </tr>
	    </tfoot>
	</table>
	
	<!-- 导入底部 -->
	<div id="footer"></div>
	
	<script>
		$(function () { $("[data-toggle='tooltip']").tooltip(); });
	</script>

</body>
</html>