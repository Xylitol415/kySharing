<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--
        电子资料分类显示页面
-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>电子资料</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-table.js" type="text/javascript"></script>
    <script src="js/bootstrap-table-zh-CN.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
	<script src="js/include.js"></script>
	
	<script type="text/javascript">
		function doDelete(eid){
			/*如果弹出的对话框，用户点击的是确定，马上去请求Servlet
			*/
			var flag = confirm("是否确定删除？");
			if(flag){
				// 表明点了确定，访问servlet，在当前页面上打开超链接
				window.location.href="DeleteEResourcesServlet?eid="+eid;
			}
		}
	</script>
</head>

<body>
<!--引入头部-->
<div id="header"></div>
<!-- 头部 end -->

<!--
        中间部分：电子资料显示
        bootstrap表格 table-bordered 表格边框 table-striped 条纹间隔 table-hover 表格悬停

-->

<!-- 条件查询输入框 -->
<form method="post" action="SearchEResourcesServlet">
	<div class="panel-body" style="padding-bottom:10px;"></div>
    <div class="panel panel-default">
        <div class="panel-heading">查询条件</div>
        <div class="panel-body">
                <div class="form-group" style="margin-top:15px">
                    <label class="control-label col-sm-1" for="txt_search_departmentname">资料标题</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="txt_search_departmentname" name="etitle">
                    </div>
                    <label class="control-label col-sm-1" for="txt_search_statu">科目类别</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="txt_search_statu" name="ecategory">
                    </div>
                    <div class="col-sm-4" style="text-align:left;">
                        <button type="submit" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
                    </div>
                </div>
        </div>
    </div>
</form>

    <table id="exp_note" class="table table-bordered table-striped table-hover">
        <caption style="font-size: 24px;color: #000; line-height: 28px;">&nbsp;电子资料分类列表</caption>

        <!-- 表格列标题栏  不用改动 -->
        <thead>
        <tr>
            <th style="vertical-align: middle !important;text-align: center;">类别</th>
            <th style="vertical-align: middle !important;text-align: center;">资料名称</th>
            <th style="vertical-align: middle !important;text-align: center;">下载链接</th>
            <th style="vertical-align: middle !important;text-align: center;">分享者</th>
            <th style="vertical-align: middle !important;text-align: center;">分享时间</th>
            <th style="vertical-align: middle !important;text-align: center;">操作</th>
        </tr>
        </thead>

        <!-- 表格主体部分  从数据库查询所得数据显示在此处-->
        <tbody style="text-align: center">
        <c:forEach items="${list}" var="ers">
        <tr>
            <td>${ers.ecategory}</td>
            <td>${ers.etitle}</td>
            <td>${ers.elink}</td>
            <td>${ers.euname}</td>
            <td>${ers.etime}</td>
            <td width="230px">
                <div class="btn-group">
                	<a href="dzzl_add.jsp">
	                    <button  type="button" class="btn btn-info" data-toggle="tooltip"  title="新增">
	                        <span class="glyphicon glyphicon-plus"></span>
	                    </button>
	                </a>
                    <c:if test="${sessionScope.urole=='2'}">
                    <a href="EditEResourcesServlet?eid=${ers.eid}">
	                    <button  type="button" class="btn btn-warning" data-toggle="tooltip"  title="修改">
	                        <span class="glyphicon glyphicon-pencil"></span>
	                    </button>
                    </a>
                    <a href="#" onclick="doDelete(${ers.eid})">
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
            <td colspan="6" align="center" style="font-size:18px">
              <p>各大机构最新最全考研电子资料免费更新，复制链接，搜索即可下载！</p>
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