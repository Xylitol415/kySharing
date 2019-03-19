<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<script language="javascript" type="text/javascript">
        $(function () {
            $("#span_officialEmail").hover(function () {
                //alert("悬停");
                alert("邮箱联系：1173950721@qq.com");
            }, function () {
                //alert("离开");
            })
        });
    </script>
    <!--  导航栏点击变色  -->
    <script type="text/javascript">
   		$('#nav-pills li a').each(function(){  
   	       if($($(this))[0].href==String(window.location))  
   	           $(this).parent().addClass('active');  
    	});
	</script>
    <link rel="shortcut icon" href="kyicon.ico" type="image/x-icon" />
	
	<header id="header">
	    <!--
	    	描述：菜单栏
		-->
        <div class="container-fluid well well-sm">
            <div class="col-md-5">
                <a href="index.jsp"><img src="img/SysLogo.png" width="100%"/></a>
            </div>
            <div class="col-md-7" style="padding-top:120px" align="right">
                <div class="shortcut">
                    
                    <!-- 登录状态  -->
                    
                    <span id="span_username" class="glyphicon" style="color: rgb(46, 116, 213); font-size: 15px;">Welcome,<c:if test="${sessionScope.urole=='2' }">管理员</c:if>${sessionScope.uname}&nbsp;</span>
                    <a href="ExitServlet">
                        <span class="glyphicon glyphicon-log-out" style="color: rgb(51,122,183); font-size: 15px;"> 退出&nbsp;</span>
                    </a>

                    <span id="span_officialEmail" class="glyphicon glyphicon-envelope" style="color: rgb(51,122,183); font-size: 15px;"> 官方邮箱</span>
                </div>
            </div>
        </div>
	
        <!--  
        	导航栏  
        -->
        <div class="col-md-9">
            <ul class="nav nav-pills nav-justified" id="nav-pills" style="border:5px;color:rgb(204,204,204)">
                <li style="color: rgb(51,122,183); font-size: 18px;" ><a href="index.jsp">首页</a></li>
                <li  style="color: rgb(51,122,183); font-size: 18px;"><a href="NoteListServlet">经验贴</a></li>
                <li  style="color: rgb(51,122,183); font-size: 18px;"><a href="EResourcesListServlet">电子资料</a></li>
                <li  style="color: rgb(51,122,183); font-size: 18px;"><a href="PResourcesListServlet">纸质资料</a></li>
                <!--  <li  style="color: rgb(51,122,183); font-size: 18px;"><a href="outsideinfo.jsp">站外信息</a></li>  -->
                <li class="dropdown" style="color: rgb(51,122,183); font-size: 18px;">
	                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	                   	 站外信息
	                    <b class="caret"></b>
	                </a>
	                <ul class="dropdown-menu">
	                    <li><a href="outsideinfo.jsp" target="_blank">研招网</a></li>
	                    <li class="divider"></li>
	                    <li><a href="#">考研帮</a></li>
	                    <li class="divider"></li>
	                    <li><a href="#">计算机王道论坛</a></li>
	                    <li class="divider"></li>
	                    <li><a href="#">新东方考研</a></li>
	                    <li class="divider"></li>
	                    <li><a href="#">安庆师范大学考研</a></li>
	                </ul>
            	</li>
           	</ul>
        </div>
        <div class="col-md-3">
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search...">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
        <br>
        <br>
	</header>