<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 系统首页 -->
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>考研资源共享系统</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
	<script src="js/jquery-3.3.1.js"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="ky.index.packed.js.下载" type="text/javascript"></script>
	<script src="js/include.js"></script>
	<script>
        $(function(){
            $.get("FindUserServlet",{},function(data){
            	//alert("登录成功,"+data.uname);
                //{uid:1;uname:'李四'}
                var msg = "欢迎回来，" + data.uname;
                $("#span_username".html(msg));
            });
        });
    </script>
	
    <!--  附加导航 style 开始 -->
    <style>
        /* Custom Styles */
        ul.nav-tabs{
            width: 200px;
            margin-top: 20px;
            margin-left: 40px;    /*左边距*/
            border-radius: 4px;
            border: 1px solid #ddd;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
            align-content: center;
        }
        ul.nav-tabs li{
            margin: 0;
            border-top: 1px solid #ddd;
        }
        ul.nav-tabs li:first-child{
            border-top: none;
        }
        ul.nav-tabs li a{
            margin: 0;
            padding: 8px 16px;
            border-radius: 0;
        }
        ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
            color: #fff;
            background: #0088cc;
            border: 1px solid #0088cc;
        }
        ul.nav-tabs li:first-child a{
            border-radius: 4px 4px 0 0;
        }
        ul.nav-tabs li:last-child a{
            border-radius: 0 0 4px 4px;
        }
        ul.nav-tabs.affix{
            top: 30px; /* Set the top position of pinned element */
        }
    </style>
    <!--  附加导航 style 结束 -->

     <!-- 时间轴效果引入文件-->
    <link href="./ky.index.1225.css?v=2" rel="stylesheet">
    
</head>





<!--  data 属性设置附加导航 声明滚动监控-->
<body data-spy="scroll" data-target="#myScrollspy">


<!-- 引入头部 -->
<div id="header"></div>

<br>




    <!--  轮播图start -->


    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"
                class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="./img/lunbotu/1.png" alt="First slide" width="100%">
            </div>
            <div class="item">
                <img src="./img/lunbotu/2.png" alt="Second slide" width="100%">
            </div>
            <div class="item">
                <img src="./img/lunbotu/3.jpg" alt="Third slide" width="100%">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
    <br>

    <!--   轮播图 end -->


    <!--affix导航插件   -->
    <!--<div class="container">-->
    <div class="jumbotron">
     <h1 align="center">研途风景，你我共享</h1>
    </div>
    <div class="row">
        <div class="col-xs-3" id="myScrollspy" >
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="600">
                <li class="active"><a href="#section-1">致考研路上的你我</a></li>
                <li><a href="#section-2">为什么选择考研？</a></li>
                <li><a href="#section-3">3月—6月(基础阶段)</a></li>
                <li><a href="#section-4">7月—8月(强化阶段)</a></li>
                <li><a href="#section-5">9月—12月(冲刺阶段)</a></li>
            </ul>
        </div>
        <div class="col-xs-8">
            <h2 id="section-1">►致考研路上的你我</h2>
            <p>摘要：知道吗，下定决心考研的你们真的都很了不起，因为这条路不轻松，甚至说很煎熬。能做出这么需要勇气的决定，你一定在心里留着一个只有你才清楚的故事吧。你为什么考研？我们一起来看看看考研人的回答。</p>
            <p>又是一年3月初，又一届的考研备考开始了，自习室里的人换了一茬又一茬，唯有一样不变，那就是追随梦想的青春。到目前为止，2019考研34所自划线院校复试分数线已经公布结束，哈工大复试也已经开始举行了，国家线也快出来了。2019考研复试战役即将打响，复试结束后，一场关于考研的奋斗史就暂时告一段落了。而2020考研的持久战，才刚刚开始，并且你离考研也不远了。</p>
            
            <hr>
            <h2 id="section-2">►为什么选择考研？</h2>
            <p>@欧阳涛涛：2017年毕业，和许多毕业生一样出来工作，工作一段时间了感觉自己能力欠缺很多，职场工作没有成就感，不甘心就做一辈子这样的工作。现在心劲还在想要将来更有竞争力去面对社会。前段时间和女朋友分手，整个人长时间走不出来。现在必须找一件能够专注的事情来充实自己也提升自己。</p>
            <p>@稻草人：本科期间没找到女朋友，所以想读个研。找找自己的缘分</p>
            <p>@晓东：很多考研的伙伴们，可能有的是为了好的学位可以找到好的工作，有的是为了精进自己以后学以致用。但是我想说，对于学纯艺术的学生，考研并不意味着未来的金钱和地位。相反，等到毕业了，我们依然要面对这个我们几乎没有立足之地的社会和生存的压力。但是只要曾经接受过艺术，真的不舍得出来，那些最真诚最美好的东西，没有多少人有机会体会得到。所以可能考研对于我是给自己再三年没有顾忌的享受画画的时光，虽然也期待着很多人看到和更多人认可，但即使没有人也没有关系，这辈子可以经历这一段已经足够了。</p>
            <p>@云霄：面对现在生活压力与社会的人才竞争，我选择考研的一方面是我向社会做出了妥协与让步，因为如果不考研，以后的路，没有人给你铺，也没有人给你指明方向，你面对成千上万的人去竞争，你没有多少优势，因为你有的，别人都有，你没有的别人可能也会有，所以，为了让自己有一定的优势去竞争，我只能选择考研，另外一方面，我认为我应该去考研，就像考大学一样，每个人都有一个大学梦，同样的，每个大学生也会有个考研梦，我想提升一下自己，不仅仅实在学历上，更想在准备考研的过程中，找到自己上进与奋斗的一面，想证明90后在大学里并不只是荒废青春</p>
            <p>@fanfan：不敢妄言，句句铢真。人生苦短，不过百年，匆匆时光，一瞬之间。考研之路，不求文凭，高低如何，不求工作，难易怎样，但求一事，能居于更高处，望世界更美好，以更高的角度，观人生的意义。打破阶级也罢，摆脱固化也好，登高楼而望远，吾自小便习得，如机会能再有，便去的更高处。</p>
            <p>@GL：为了什么考研呢？刚开始可能真的是因为单纯的年纪小，毕业后直接工作会慌，想有个过度的平台期。后来，走上考研后才发觉，考研很重要，不再是自己逃避工作的一个借口，开始知道别的学校有多优秀，和本科院校差距在哪儿，觉着自己大学前两年都荒废了，视野突然变得宽泛，心态甚至也变得比之前更好。身边有人说过，女孩子，稳定点就好，没有必要读太多书，甚至还从我的家庭条件考虑，说父母养我们这么多孩子不容易。</p>
            <p>我只是笑，我想要的东西太多，除了自己谁都给不起，爸妈的不易我知道，我也不会舍得向他们索取，让我特别特别感动的就是每次我做什么决定，只要是正确的，爸妈都会说你去吧，你做吧，justdoit.真的很庆幸我有世界上最好的父母。考研，说难不难，坚持一件事儿做了这么久了，大半年，经历了很多，和初恋分手，生病，可是从来没有想过放弃，我说，我可以放弃任何人，也不会放弃考研。考研，也许是我最后的挣扎，我知道，我会有一个好的结果。分手那段时间刷考虫刷考虫，刷着刷着就笑了，笑了笑了就哭了。远方有我的梦，不能放，就连跌倒的伤，伤口也要是，自己努力过的模样。</p>
            <p>@从良猫：我是单亲家庭的女孩，从小因为是女生而且又是单亲受到很多冷言冷语，家庭条件也不好，在我4岁的时候我妈妈就带着我净身出户了，那时候我妈妈才25岁，次年她又下岗，这些年带着我，吃了不少苦。其实按理来说我这样家庭的孩子大学毕业后就该去工作分担家庭负担，我的成长过程中一直有人觉得我妈这样没什么文化又离婚早的人是养不成器孩子的，受了不少白眼，我考上大学本科以后大家对我妈的看法才改观，虽然在云南的一个二本不算什么，但是对我妈来说已足以成为她的骄傲。她非常支持我考研，读书改变命运，即使家里条件一般也一定要供我读研，争一口气，所以我现在奋斗着，为我妈妈的一口气。还有一个原因就是因为想和大学的男朋友在一起.</p>
            <hr>
            <h2 id="section-3">►3月—6月(基础阶段)</h2>
            <p>从3月份，也就是现在起到6月份为止，这段时间是你的考研科目基础复习阶段。在开始这一阶段之前，如果准备工作还没有做好，比如还没确定专业院校，还没收集好相关的考研数据，还没有准备好复习材料，就要抓紧时间去准备了，如果再往后拖，就会耽误接下来的备考。</p>
            <p>如果准备工作已经做好了，那么就开始考研复习吧。复习的时间要安排好，比如尽量不占用上课时间，数学和英语的复习时间要多安排些，专业课也得多下功夫学习，政治可以暑假后再开始复习。这个阶段主要是多看书，做好笔记，多背单词，有数学考试科目的要多做题实践。同时，整块的时间与零散的时间也要合理地利用。</p>
            <hr>
            <h2 id="section-4">►7月—8月(强化阶段)</h2>
            <p>暑假是考研备考的黄金期，这个阶段主要是将暑假前已经初步复习了一遍的知识加深一下，强化记忆，巩固复习的成果。暑假阶段，还是以考研专业课和英语、数学为主，考研政治可以先开始复习马原了，这门课，比较难，需要提前复习去理解。如果说基础阶段是理解记忆知识点，那么强化阶段就是把你学到的知识加以运用和巩固记忆。考研英语要做真题，考研数学更要做题，专业课最好再复习一遍，同时开始去寻找目标院校的真题，研究一下题型和命题人的思路，最好自己做一遍。</p>
            <hr>
            <h2 id="section-5">►9月—12月(冲刺阶段)</h2>
            <p>这个阶段是冲刺阶段，也是在知识已经掌握的基础上，进行整合、记忆和综合运用。考研英语、数学还有专业课在本阶段是整合、总结和融会贯通。而考研政治也可以开始复习了，最好参照最新发布的考研大纲，对考研范围做到心里有数，合理安排好复习时间。</p>
            </div>
    </div>
</div>
<br><br>

<!--进度条-->

<div class="progress progress-striped active">
    <div class="progress-bar progress-bar-success" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 25%;">
        <span class="sr-only">25%成功</span>
    </div>
    <div class="progress-bar progress-bar-info" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 25%;">
        <span class="sr-only">25%信息</span>
    </div>
    <div class="progress-bar progress-bar-warning" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 25%;">
        <span class="sr-only">25%警告</span>
    </div>
    <div class="progress-bar progress-bar-danger" role="progressbar"
         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
         style="width: 25%;">
        <span class="sr-only">25%危险</span>
    </div>
</div>


<!-- 时间线  工具-->
    <div class="timeLine">
        <div class="timeLineCon">
            <div class="timeScroll">
                <div class="timeScrollArea">
                    <div class="timeScolling" style="left: -1080px; width: 2340px;">
                        <div class="timeItem">
                            <p class="timeGray">1月-2月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://m.kaoyan.com/www/z2016/17gufen_spread/">在线估分</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/beikao/jingyan/58634efe386dd.html">过来人谈初试后做什么</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/beikao/jingyan/5a40b2c02e009.html">不做初试考后"迷糊蛋"</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">2月-3月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/chengji/">查询成绩</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/chengji/5a30db906c4f5.html">考研初试成绩查询入口</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">3月上旬</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/fenshuxian/5a38ac0103f82.html">34所复试线</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/xsgjx/">历年学硕复试分数线走势分析</a></p>

                        </div>
                        <div class="timeItem">
                            <p class="timeGray">3月中旬</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/fenshuxian/58c8d60f5f178.html">国家线</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/zsgjx/">历年专硕复试分数线走势分析</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">3月-4月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/fushi/">考研复试</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/fushi/xinxi/">复试信息</a>|<a href="http://www.kaoyan.com/fushi/jingyan/">经验</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">4月-5月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://tiaoji.kaoyan.com/">考研调剂</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/tiaoji/#&amp;pageHome">考研调剂指南</a></p>
                            <p class="timeSgray"><a href="http://tiaoji.kaoyan.com/xinxi/">调剂信息</a>|<a href="http://tiaoji.kaoyan.com/jingyan/">经验</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">3-6月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/z2018/zxzzy/#&amp;pageHome">择校择专业</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/baokao/zexiao/5a44b25ade478.html">科研单位第四轮学科评估结果</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/baokao/zexiao/59e22a16ce5f5.html">学长择校6条建议</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">6-7月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/luqu/">录取通知书</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">7-8月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/dagang/">考研大纲</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/yingyu/dagang/">英语</a> / <a href="http://www.kaoyan.com/shuxue/dagang/">数学</a> / <a href="http://www.kaoyan.com/zhengzhi/dagang/">政治</a></p>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/dagang/">专业课考试范围</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">11月</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/xianchang/59fc444ea74cf.html">现场确认</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/zhaosheng/59c33ac77ffc2.html">招生报考公告汇总</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/zhaosheng/59e479ce31ed4.html">报考点现场确认汇总</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">11月15-12月22日</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/z2017/lastfxjh/">冲刺备考</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/yatitongji/">冲刺备考攻略</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/beikao/jingyan/5a572a3fbff88.html">时间管理法则</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">12月15-25日</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/z2017/dyzkz/">打印准考证</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/kaochang/5a15403d23d74.html">硕士研究生初试考场安排</a></p>
                        </div>
                        <div class="timeItem">
                            <p class="timeGray">12月23-25日</p>
                            <em class="timeCircle"></em>
                            <p class="timeTitle"><a href="http://www.kaoyan.com/z2017/chushi/">考研初试</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/yingyudt/">英语</a></p>
                            <p class="timeSgray"><a href="http://www.kaoyan.com/z2017/zzdtjq/">政治高频命题</a></p>
                        </div>
                    </div>
                </div>
                <span class="timeScrollLeft dasabled"></span>
                <span class="timeScrollRight"></span>
            </div>
            <div class="timeRule"></div>
        </div>
        <p class="timeLineBg"></p>
    </div>
    <!-- 时间轴 end-->

    <!--
          描述：页脚部分
     -->
    <!-- 导入底部 -->
	<div id="footer"></div>

</body>
</html>