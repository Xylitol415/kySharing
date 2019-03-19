<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--
        某一条经验贴详细内容显示页面
-->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>经验贴详情</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/jyt-detail.css">
    <script src="js/include.js"></script>
</head>

<body>
	<!-- 导入头部 -->
	<div id="header"></div>

	<!-- 详情 start -->
	<div class="wrap">
	    <div class="bread_box">
	        <a href="index.jsp">首页</a>
	        <span> &gt;</span>
	        <a href="NoteListServlet">经验贴</a><span> &gt;</span>
	        <a href="#">${note.ntitle}</a>
	    </div>
	    <div class="prosum_box">
	        <dl class="prosum_left">
	            <dt>
	                <img alt="" class="big_img" src="http://www.tsinghua.edu.cn/publish/newthu/newthu_cnt/intothu/picture/view7.jpg">
	            </dt>
	            <dd>
	                <a class="up_img up_img_disable"></a>
	                <a title="" class="little_img" data-bigpic="images/view1.jpg">
	                    <img src="images/view1.jpg">
	                </a>
	                <a title="" class="little_img" data-bigpic="images/view7.jpg">
	                    <img src="images/view7.jpg">
	                </a>
	                <a title="" class="little_img" data-bigpic="images/view6.jpg">
	                    <img src="images/view6.jpg">
	                </a>
	                <a title="" class="little_img" data-bigpic="images/view3.jpg">
	                    <img src="images/view3.jpg">
	                </a>
	                <a title="" class="little_img" data-bigpic="images/view8.jpg">
	                    <img src="images/view8.jpg">
	                </a>
	                <!--<a title="" class="little_img" data-bigpic="images/view9.jpg">-->
	                    <!--<img src="images/view9.jpg">-->
	                <!--</a>-->
	                <!--<a title="" class="little_img" data-bigpic="images/view11.jpg">-->
	                    <!--<img src="images/view11.jpg">-->
	                <!--</a>-->
	                <!--<a title="" class="little_img" data-bigpic="images/view14.jpg">-->
	                    <!--<img src="images/view14.jpg">-->
	                <!--</a>-->
	                <!--<a title="" class="little_img" data-bigpic="images/view15.jpg">-->
	                    <!--<img src="images/view15.jpg">-->
	                <!--</a>-->
	                <a class="down_img down_img_disable" style="margin-bottom: 0;"></a>
	            </dd>
	        </dl>
	        <div class="prosum_right">
	            <!--  数据库中经验贴标题  -->
	            <p class="pros_title">【${note.ntitle}】</p>
	            <!--  数据库中经验贴类别   -->
	            <p class="hot label label-info">${note.ncategory}</p>
	            <div class="pros_other">
	                <!--  数据库中分享者  录取院校  考研成绩  -->
	                <p>分享者  ：${note.nuname}</p>
	                <p>分享时间 ： ${note.ntime}</p>
	                <p>录取院校 : ${note.nschool}</p>
	                <p>录取专业 ： ${note.numajor}</p>
	                <p>考研成绩 ： ${note.nscore}</p>
	            </div>
	            <!--  
	            <div class="pros_price">
	                <p class="price"><strong>¥2699.00</strong><span>起</span></p>
	                <p class="collect">
	                    <a class="btn"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
	
	                    <a  class="btn already" disabled="disabled"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
	                    <span>已收藏100次</span>
	                </p>
	            </div>
	            -->
	        </div>
	    </div>
	</div>
	
    <div class="you_need_konw">
    	<div>
	        <p style="font-size: 16px; border-bottom: 3px solid #0088cc; width:70px">文章详情<p>
    	</div>
        <div class="notice">
            <p>${note.ncontent}</p>
        </div>
    </div>

	
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-3.3.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	
	<script>
	    $(document).ready(function() {
	        //焦点图效果
	        //点击图片切换图片
	        $('.little_img').on('mousemove', function() {
	            $('.little_img').removeClass('cur_img');
	            var big_pic = $(this).data('bigpic');
	            $('.big_img').attr('src', big_pic);
	            $(this).addClass('cur_img');
	        });
	        //上下切换
	        var picindex = 0;
	        var nextindex = 4;
	        $('.down_img').on('click',function(){
	            var num = $('.little_img').length;
	            if((nextindex + 1) <= num){
	                $('.little_img:eq('+picindex+')').hide();
	                $('.little_img:eq('+nextindex+')').show();
	                picindex = picindex + 1;
	                nextindex = nextindex + 1;
	            }
	        });
	        $('.up_img').on('click',function(){
	            var num = $('.little_img').length;
	            if(picindex > 0){
	                $('.little_img:eq('+(nextindex-1)+')').hide();
	                $('.little_img:eq('+(picindex-1)+')').show();
	                picindex = picindex - 1;
	                nextindex = nextindex - 1;
	            }
	        });
	        //自动播放
	        // var timer = setInterval("auto_play()", 5000);
	    });
	
	    //自动轮播方法
	    function auto_play() {
	        var cur_index = $('.prosum_left dd').find('a.cur_img').index();
	        cur_index = cur_index - 1;
	        var num = $('.little_img').length;
	        var max_index = 3;
	        if ((num - 1) < 3) {
	            max_index = num - 1;
	        }
	        if (cur_index < max_index) {
	            var next_index = cur_index + 1;
	            var big_pic = $('.little_img:eq(' + next_index + ')').data('bigpic');
	            $('.little_img').removeClass('cur_img');
	            $('.little_img:eq(' + next_index + ')').addClass('cur_img');
	            $('.big_img').attr('src', big_pic);
	        } else {
	            var big_pic = $('.little_img:eq(0)').data('bigpic');
	            $('.little_img').removeClass('cur_img');
	            $('.little_img:eq(0)').addClass('cur_img');
	            $('.big_img').attr('src', big_pic);
	        }
	    }
	</script>
	
	<!-- 导入底部 -->
	<div id="footer"></div>
</body>

</html>