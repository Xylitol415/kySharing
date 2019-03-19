<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0032)https://yz.chsi.com.cn/yzzt/kybk -->
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>站外信息_来自研招网</title>
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/include.js"></script>
<!--  <link rel="stylesheet" href="css/bootstrap2.css" type="text/css" />
-->


<style type="text/css">
html { color:#333;background:#fff; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;}
body,p,ul,ol,li,img,h1,h2,h3,h4,h5,h6,form,fieldset,legend,select,input{margin:0; padding:0;}
body,button,input,select,textarea{font:14px/1.8 "Helvetica Neue",Helvetica,"PingFang SC","Microsoft YaHei",
"Hiragino Sans GB","WenQuanYi Micro Hei",Arial,sans-serif;}
h1,h2,h3,h4,h5,h6 {font-size:100%;}
button, input, select, textarea {font-size: 100%;}
ul,ol,li{list-style:none;}
fieldset,img{border:0;}
p{text-indent:2em;}
a,a:link,a:visited{color:#333333; text-decoration:none;}
a:hover{color:#326ca6; text-decoration:underline;}
.clearfix:after{content:'\0020'; display:block; clear:both; height:0;}
.clearfix{zoom:1;}
.clearfloat{ clear:both;height:0;line-height:0;font-size:0; overflow:hidden;}
/*topNav layout*/
.box {
	min-width: 1200px;
	min-height: 100%;
	background: #ffffff;
}
.headerbackground {
	width:100%;
	height:410px;
	margin: 0 auto;
	min-width: 1180px;
	position: relative;
	background:url(//t1.chei.com.cn/theme/1761405494/banner.jpg) no-repeat scroll center top;
	background-color: #fff;
	margin-top: -10px;
}
h1 {
    position:absolute;
    left:0;
    top:-30px;
    margin-top:-30px;
    height:30px;
    line-height:30px;
}
.content {
	width: 1180px;
	margin: 0 auto;
	overflow: hidden;
}
.preface, .part1, .part2, .part3, .part4 {
	float: left;
	width: 1180px;
	margin-top: 20px;
	overflow: hidden;
}	
.preface {
    height: 80px;
    overflow: hidden;
}	
.width_120 {
    float: left;
    width: 120px;
    height: 80px;
    line-height: 80px;
    background: #1e8ae0;
    text-align: center;
    color: #fff;
    font-size: 28px;
}
.width_1060 {
    float: left;
    width: 1016px;
    padding: 16px 20px;
}		
.title-box {
    position: relative;
    height: 40px;
    border-bottom: 1px solid #e0e0e0;
    margin-bottom: 50px;
}
.title-box .bt {
    position: absolute;
    left: 526px;
    top: 0;
    height: 80px;
    line-height: 80px;
    color: #333;
    font-size: 28px;
    padding: 0 16px;
    width: 112px;
    background-color: #ffffff;
}
.width_700 {
    float: left;
    width: 700px;
}
.width_460 {
    float: right;
    width: 460px;
}	
.box1_220 {
    float: left;
    width: 200px;
    padding: 10px;
    background-color: #ebf6ff;
    margin-right: 20px;
	margin-bottom: 20px;
    height: 80px;
}
.box1_220r {
    float: left;
    width: 200px;
    padding: 10px;
	margin-bottom: 20px;
    background-color: #ebefff;
    height: 80px;
}
.box2_220 {
    float: left;
    width: 200px;
    padding: 10px;
    background-color: #ebefff;
    margin-right: 20px;
    height: 126px;
}
.box2_220r {
    float: left;
    width: 200px;
    padding: 10px;
    background-color: #ebf6ff;
    height: 126px;
}
.box3_220 {
    float: left;
    width: 200px;
    padding: 10px;
    background-color: #ebf6ff;
    margin-right: 20px;
	margin-bottom: 20px;
    height: 186px;
}
.box3_220r {
    float: left;
    width: 200px;
    padding: 10px;
	margin-bottom: 20px;
    background-color: #ebefff;
    height: 186px;
}	
.box_200 {
    height: 32px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #1787e0;
}	
.box_b200 {
    color: #333;
	font-size: 16px;
    padding-top: 10px;
	text-align: center;
}	
.box4_460 {
    float: left;
    width: 440px;
    padding: 0px 10px;
    background-color: #ebefff;
    height: 40px;
}	
.box1_200 {
	float: left;
    height: 40px;
	width: 200px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #1787e0;
}	
.box1_b200 {
    color: #333;
	font-size: 16px;
	text-align: center;
	line-height: 40px;
}	
.width172 {
    float: left;
    width: 180px;
	height: 210px;
    background-color: #F3F3F3;
}
.width172_r {
    float: left;
    width: 230px;
	height: 210px;
    background-color: #F3F3F3;
	margin-left: 50px;
	margin-bottom: 20px;
}
.width172_r h3 {
    height: 40px;
    font-size: 16px;
    background-color: #1787e0;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #fff;
}	
.width172 h3 {
    height: 40px;
    font-size: 16px;
    background-color: #1787e0;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #fff;
}
.width172_b {
    color: #333;
	font-size: 16px;
	text-align: center;
	line-height: 30px;
}
.width172_b h4 {
    height: 30px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 30px;
    color: #1787e0;
	border-bottom: 1px solid #1787e0;
	margin: 4px 16px;
}
a.one:link, a.one:visited {
    color: #1787e0;
}
a.two:link, a.two:visited {
    color: #fff;
}	
.width80 {
    float: left;
    width: 60px;
    height: 180px;
    font-size: 24px;
    text-align: center;
    line-height: 180px;
    color: #1787e0;
}
	
.width_500 {
    width: 1020px;
	height: 160px;
	position: relative;
    left: 80px;
}	
.width_500_140 {
    float: left;
    width: 140px;
    background-color: #1787e0;
    height: 160px;
	text-align: center;
}
.width_500_140 h3 {
    height: 40px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #fff;
	padding-top: 20px;
}	
.width_500_180 {
    float: left;
    width: 180px;
    background-color: #ebf6ff;
    height: 160px;
}	
.width_500_180 h3 {
    height: 80px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 80px;
    color: #1787e0;
}
.width_500_180 h5 {
    height: 72px;
	padding-top: 8px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 30px;
    color: #1787e0;
	background-color: #ebefff;
}	
.width_500_180 h4 {
    height: 40px;
    font-size: 16px;
    text-align: center;
    line-height: 40px;
    color: #333;
	font-weight: 500;
}	
.width_382 {
    float: left;
    width: 362px;
    padding: 10px;
    background-color: #f4f8fc;
    margin-bottom: 16px;
    margin-right: 16px;
    height: 200px;
}
.width_382_on {
    height: 40px;
    font-size: 16px;
    text-align: center;
    font-weight: bold;
    line-height: 40px;
    color: #fff;
    background-color: #1787e0;
}	

.width_382_b {
    margin-bottom: 15px;
    color: #333;
    padding-top: 16px;
}	
.width_382_r {
    float: right;
    width: 363px;
    padding: 10px;
    background-color: #f4f8fc;
    margin-bottom: 10px;
    height: 200px;
}	
.news-bottom {
	background: #ffffff;
	width: 1180px;
	text-align: left;
	margin-bottom: 20px;
}
.outer-footer {
	margin: auto;
	width: 1200px;
	text-align: center;
	line-height: 28px;
	font-size: 14px;
	padding: 10px 0;
}

</style>


</head>
<body>
<!-- 引入头部 -->
<!-- 
<div id="header">
</div>
 -->
<div class="box">
	<!-- 跳转链接 -->
	<div style="padding-left:10px;font-size:18px">
        <a href="index.jsp">首页</a>
        <span> &gt;</span>
        <a href="outsideinfo.jsp">站外信息</a><span> &gt;</span>
        <a href="https://yz.chsi.com.cn">研招网</a>
	</div>
	<!--主要内容-->
  	<div class="content">
		<!-- preface -->
		<div class="preface clearfix">
    		<div class="width_120">导言</div>
    		<div class="width_1060">
    			<p>2020年准备考研的你，对于考研有多少了解，又做了哪些准备？关于考研常识、流程节点、目标选择、规划备考等广大考研学子关注的四大关键部分，本专题都已精心梳理。无论你处在哪一阶段，本专题都将为你指点迷津，助力研考。研招网预祝广大学子2020考研榜上有名！</p>
    		</div>
  		</div>
		<div class="part1 clearfix">
			<div class="title-box">
				<div class="bt">考研常识</div>
    		</div>
			<div class="width_700">
			<div class="box1_220 _220">
    			<div class="box_200">研究生种类</div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/bkzn/201805/20180522/1690412124.html" target="_blank">学硕与专硕</a></div>
    		</div>
			<div class="box1_220 _220">
    			<div class="box_200">学习方式</div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/kydt/201609/20160914/1554112506.html" target="_blank">全日制与非全日制</a></div>
    		</div>
			<div class="box1_220r">
    			<div class="box_200">录取类别</div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/bkzn/201309/20130918/512723584.html" target="_blank">定向与非定向</a></div>
    		</div>
			<div class="box2_220">
    			<div class="box_200">考试方式</div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/other/201509/20150920/1295472069.html" target="_blank">统考</a> 
					单独考试<br>
					<a href="https://yz.chsi.com.cn/kyzx/other/201509/20150920/1295472069.html" target="_blank">联考</a> 
					<a href="https://yz.chsi.com.cn/tm/" target="_blank">推荐免试</a></div>
    		</div>
			<div class="box2_220">
    			<div class="box_200">英语数学</div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/bkzn/201802/20180209/1655045606.html" target="_blank">英语一与英语二</a><br>
				<a href="https://yz.chsi.com.cn/kyzx/bkzn/201802/20180209/1655045607.html" target="_blank">数一、数二与数三</a></div>
    		</div>
			<div class="box2_220r">
    			<div class="box_200"><a class="one" href="https://yz.chsi.com.cn/kyzx/zcdh/" target="_blank">研招政策</a></div>
      			<div class="box_b200"><a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735913.html" target="_blank">考试公告</a><br>
				<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html" target="_blank">管理规定</a></div>
    		</div>
			</div>
			<div class="width_460">
				<div class="box3_220 _220">
    				<div class="box_200">专项计划</div>
      				<div class="box_b200">
						<a href="https://yz.chsi.com.cn/kyzx/kp/201108/20110818/227329095.html" target="_blank">强军计划</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/kp/201108/20110818/227329363.html" target="_blank">援藏计划</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/kp/200910/20091009/34480737.html" target="_blank">硕师计划</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/jybzc/201809/20180930/1726266557.html" target="_blank">少数民族骨干计划</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/jybzc/201809/20180905/1718844973.html" target="_blank">退役大学生计划</a>
					</div>
    			</div>
				<div class="box3_220r">
    				<div class="box_200">奖助政策</div>
      				<div class="box_b200">
						<a href="https://yz.chsi.com.cn/kyzx/zcdh/201308/20130813/471774590.html" target="_blank">国家助学金</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/zcdh/201308/20130812/466965194.html" target="_blank">学业奖学金</a><br>
						<a href="https://yz.chsi.com.cn/kyzx/zcdh/201211/20121106/360457385.html" target="_blank">国家奖学金</a><br>
						<a href="https://www.chsi.com.cn/gjzxdk/news/201308/20130805/448132127-6.html" target="_blank">国家助学贷款</a><br>
						<a href="https://yz.chsi.com.cn/z/jzzctx/index.jsp" target="_blank">研究生三助岗位津贴</a>
					</div>
    			</div>	
				<div class="box4_460">
    				<div class="box1_200">招生单位分区</div>
      				<div class="box1_b200"><a href="https://yz.chsi.com.cn/kyzx/other/201801/20180125/1648756066.html" target="_blank">一区与二区</a></div>
    			</div>
			</div>	
		</div>
		<div class="part2 clearfix">
			<div class="title-box">
        		<div class="bt">考研流程</div>
    		</div>
            <div class="width172">
                <h3>9-10月</h3>
                <div class="width172_b">
					<h4><a class="one" href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part04" target="_blank">报考</a></h4>
					<a href="https://yz.chsi.com.cn/sch/" target="_blank">招生简章</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part04" target="_blank">报考条件</a><br>
					<a href="https://yz.chsi.com.cn/yzwb/" target="_blank">网上报名</a><br><a href="https://yz.chsi.com.cn/help/" target="_blank">常见问题</a>
            	</div>
			</div>	
      		<div class="width80">&gt;&gt;</div>
      		<div class="width172">
                <h3>12月</h3>
            	<div class="width172_b">
					<h4><a class="one" href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part06" target="_blank">初试</a></h4>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735913.html" target="_blank">初试时间</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735913.html" target="_blank">初试科目</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part06" target="_blank">分值设置</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/zcdh/201812/20181211/1746570414.html;jsessionid=FFA22C5DCB9CE1A680E03EF819B08608" target="_blank">考场规则</a>
           		</div>
			</div>	
		    <div class="width80"> &gt;&gt;</div>
		    <div class="width172">
                <h3>3-4月</h3>
                <div class="width172_b">
					<h4><a class="one" href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part08" target="_blank">复试</a></h4>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part08" target="_blank">破格复试政策</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/bkzn/201802/20180208/1654252156.html" target="_blank">加分及照顾政策</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/fstj/201901/20190109/1754468216.html" target="_blank">复试分数线</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/fstj/" target="_blank">复试备考</a>
            	</div>
			</div>	
            <div class="width80">&gt;&gt; </div>
      		<div class="width172">
                <h3>3-4月</h3>
                <div class="width172_b">
					<h4><a class="one" href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part09" target="_blank">调剂</a></h4>
					<a href="https://yz.chsi.com.cn/kyzx/jybzc/201808/20180821/1715735904.html#part09" target="_blank">调剂基本条件</a><br>
					<a href="https://yz.chsi.com.cn/help/index.jsp?tagid=71re92ewb4k4bl1v" target="_blank">调剂常见问题</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/tjzd/201803/20180319/1670536815.html" target="_blank">调剂注意事项</a><br>
					<a href="https://yz.chsi.com.cn/kyzx/kp/201803/20180321/1671238952.html" target="_blank">网上调剂流程</a>
            	</div>
			</div>
            <div class="width172_r">
                <h3>9-10月报志愿, 1月录取出结果</h3>
                <div class="width172_b">
					<h4><a class="one" href="https://yz.chsi.com.cn/tm/" target="_blank">推免</a></h4>
					<a href="https://yz.chsi.com.cn/kyzx/other/201809/20180905/1718869964.html" target="_blank">推免条件</a><br><a href="https://yz.chsi.com.cn/yzzt/tmzn/" target="_blank">申请指南</a><br><a href="https://yz.chsi.com.cn/kyzx/kp/201809/20180905/1718874229.html" target="_blank">推免流程</a><br><a href="https://yz.chsi.com.cn/tm/zyml/" target="_blank">专业目录</a>
            	</div>
			</div>
			<p>备注：报考、初试、复试、调剂四步为统考流程。统考与推免为两种不同的考试方式。</p>
		</div>
		<div class="part3 clearfix">
			<div class="title-box">
        		<div class="bt">考研目标</div>
    		</div>
			<div class="width_500">
				<div class="width_500_140">
				  	<h3>专 业 选 择</h3>
			    	<img src="./images/img1.png" width="63" height="63" alt="">
				</div>
				<div class="width_500_180">
					<h3><a class="one" href="https://yz.chsi.com.cn/zyk/" target="_blank">学 术 硕 士</a></h3><h3 style="background-color: #ebefff;">
					<a class="one" href="https://yz.chsi.com.cn/z/yzzyss/index.jsp" target="_blank">专 业 硕 士</a></h3>
				</div>
				<div class="width_500_180" style="margin-right: 20px;">
					<h4 style="background-color: #fff3eb;"><a href="https://yz.chsi.com.cn/zyk/" target="_blank">专业知识库</a></h4>
					<h4 style="background-color: #ebefff;"><a href="https://yz.chsi.com.cn/zsml/zyfx_search.jsp" target="_blank">硕士专业目录</a></h4>
					<h4><a href="https://yz.chsi.com.cn/yzzt/zyqmjx" target="_blank">专业解析</a></h4>
					<h4 style="background-color: #fff3eb;"><a href="https://yz.chsi.com.cn/yzzt/zyjd2014/" target="_blank">最易混淆的考研专业</a></h4>
				</div>
				<div class="width_500_140">
				  	<h3>院 校 选 择</h3>
			    	<img src="./images/img2.png" width="63" height="63" alt=""> </div>
				<div class="width_500_180">
					<h3><a class="one" href="https://yz.chsi.com.cn/yzzt/zxzn2016" target="_blank">考研择校指南</a></h3>
					<h5><a class="one" href="https://yz.chsi.com.cn/yzzt/zxzn2017" target="_blank">莫让“名校情结”<br>成为理性择校的绊脚石</a></h5>
				</div>
				<div class="width_500_180">
					<h4 style="background-color: #fff3eb;"><a href="https://yz.chsi.com.cn/sch/search.do?ssdm=&amp;yxls=&amp;b985=1" target="_blank">985高校</a></h4>
					<h4 style="background-color: #ebefff;"><a href="https://yz.chsi.com.cn/sch/search.do?ssdm=&amp;yxls=&amp;b211=1" target="_blank">211高校</a></h4>
					<h4><a href="https://yz.chsi.com.cn/sch/search.do?ssdm=&amp;yxls=&amp;zhx=1" target="_blank">自划线高校</a></h4><h4 style="background-color: #fff3eb;"><a href="https://yz.chsi.com.cn/sch/search.do?ssdm=&amp;yxls=&amp;yjsy=1" target="_blank">研究生院</a></h4>
				</div>
			</div>	
		</div>
		<div class="part4 clearfix">
			<div class="title-box">
        		<div class="bt">备考攻略</div>
    		</div>  
  			<div class="width_382">
    			<div class="width_382_on"> <a class="two" href="https://yz.chsi.com.cn/kyzx/politics/" target="_blank">考研政治</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/politics/201901/20190131/1762999705.html" title="2020考研政治：基层民主自治制度知识点复习重点" target="_blank">2020考研政治：基层民主自治制度知识点复习重点</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/politics/201901/20190103/1752603698.html" title="2019考研政治：分析题答题模板（一）" target="_blank">2019考研政治：分析题答题模板（一）</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/politics/201812/20181225/1749398442.html" title="2019考研政治真题完整版" target="_blank">2019考研政治真题完整版</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/politics/201812/20181225/1749398374.html" title="2019考研政治真题试卷整体评述" target="_blank">2019考研政治真题试卷整体评述</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/politics/201812/20181212/1746838146.html" title="考研政治复习，最终还是逃不过这几个问题！" target="_blank">考研政治复习，最终还是逃不过这几个问题！</a></li>
            			          			</ul>
      			</div>
    		</div>
        	<div class="width_382">
    			<div class="width_382_on"><a class="two" href="https://yz.chsi.com.cn/kyzx/en/" target="_blank">考研英语</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/en/201901/20190104/1752710219.html" title="2019考研英语（一）小作文解析" target="_blank">2019考研英语（一）小作文解析</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/en/201901/20190103/1752603872.html" title="2019考研英语一阅读Text2解析与评述" target="_blank">2019考研英语一阅读Text2解析与评述</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/en/201812/20181225/1749398443.html" title="2019考研英语一试卷阅读难度解析" target="_blank">2019考研英语一试卷阅读难度解析</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/en/201812/20181225/1749398372.html" title="2019考研英语（二）真题新题型参考答案" target="_blank">2019考研英语（二）真题新题型参考答案</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/en/201812/20181225/1749398339.html" title="2019考研英语一阅读真题解析(人工智能)" target="_blank">2019考研英语一阅读真题解析(人工智能)</a></li>
            			          			</ul>
      			</div>
    		</div>
    		<div class="width_382_r">
    			<div class="width_382_on"><a class="two" href="https://yz.chsi.com.cn/kyzx/math/" target="_blank">考研数学</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/math/201901/20190131/1762782287.html" title="2020考研数学一可能会考到的几类题型" target="_blank">2020考研数学一可能会考到的几类题型</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/math/201901/20190103/1752603867.html" title="2019考研数学三试卷线性代数部分难度解析！" target="_blank">2019考研数学三试卷线性代数部分难度解析！</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/math/201901/20190103/1752603550.html" title="2019考研数学一试题解析" target="_blank">2019考研数学一试题解析</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/math/201812/20181204/1752710221.html" title="2019考研数学：线性代数梳理" target="_blank">2019考研数学：线性代数梳理</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/math/201812/20181204/1752710220.html" title="2019考研数学：冲刺5大误区" target="_blank">2019考研数学：冲刺5大误区</a></li>
            			          			</ul>
      			</div>
    		</div>
    		<div class="width_382">
    			<div class="width_382_on"><a class="two" href="https://yz.chsi.com.cn/kyzx/zyk/" target="_blank">考研专业课</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/zyk/201901/20190103/1752602703.html" title="2018考研管综逻辑真题考情分析" target="_blank">2018考研管综逻辑真题考情分析</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/zyk/201812/20181204/1742939744.html" title="归纳总结 考研法硕（非法学）冲刺应试技巧" target="_blank">归纳总结 考研法硕（非法学）冲刺应试技巧</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/zyk/201811/20181128/1742939857.html" title="考研历史学：最后一个月，遭遇复习瓶颈怎么办？" target="_blank">考研历史学：最后一个月，遭遇复习瓶颈怎么办？</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/zyk/201811/20181128/1742939801.html" title="考研新闻学冲刺阶段，有哪些注意事项？" target="_blank">考研新闻学冲刺阶段，有哪些注意事项？</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/zyk/201811/20181124/1742939596.html" title="2019年考研：专业课冲刺必备高效记忆法" target="_blank">2019年考研：专业课冲刺必备高效记忆法</a></li>
            			          			</ul>
      			</div>
    		</div>
        	<div class="width_382">
    			<div class="width_382_on"><a class="two" href="https://yz.chsi.com.cn/kyzx/jyxd/" target="_blank">经验心得</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/jyxd/201903/20190313/1772558130.html" title="温馨提示：2020考研人，你的备考已提上日程！" target="_blank">温馨提示：2020考研人，你的备考已提上日程！</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/jyxd/201903/20190301/1769132917.html" title="哪些人适合报考2020金融学考研？" target="_blank">哪些人适合报考2020金融学考研？</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/jyxd/201902/20190228/1768944155.html" title="初试倒数，复试逆袭985" target="_blank">初试倒数，复试逆袭985</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/jyxd/201902/20190228/1768944154.html" title="学姐亲身讲述：擦线复试也能逆袭" target="_blank">学姐亲身讲述：擦线复试也能逆袭</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/jyxd/201902/20190227/1768411720.html" title="考研还是实习？小编帮你分析" target="_blank">考研还是实习？小编帮你分析</a></li>
            			          			</ul>
      			</div>
    		</div>
    		<div class="width_382_r">
    			<div class="width_382_on"><a class="two" href="https://yz.chsi.com.cn/kyzx/fstj/" target="_blank">复试备考</a></div>
      			<div class="width_382_b">
        			<ul>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/fstj/201903/20190313/1772383927.html" title="初试分高复试就稳吗？别天真了！" target="_blank">初试分高复试就稳吗？别天真了！</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/fstj/201903/20190313/1772383926.html" title="复试口语如何破？这里有好方法推荐" target="_blank">复试口语如何破？这里有好方法推荐</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/fstj/201903/20190308/1772058098.html" title="考研复试：做好这3点，就可低分逆袭，成为研究生复试中的黑马！" target="_blank">考研复试：做好这3点，就可低分逆袭，成为研究生复...</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/kydt/201903/20190307/1770783102.html" title="2019考研复试六大注意事项，考生必看！" target="_blank">2019考研复试六大注意事项，考生必看！</a></li>
            			            			<li>* <a href="https://yz.chsi.com.cn/kyzx/fstj/201903/20190301/1769132916.html" title="2019考研解析：研究生复试考查范围及应试技巧" target="_blank">2019考研解析：研究生复试考查范围及应试技巧</a></li>
            			          			</ul>
      			</div>
    		</div>	
		</div>	
		<div class="news-bottom"> <span style="float: right;">编辑：方鑫   </span>
        	<div class="clearfloat"></div>
        </div> 	
	</div>
</div>

<!-- 导入底部 -->
<!-- 
	<div id="footer"></div>
-->
</body>
</html>