<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index For New IMMS</title>
    <link rel="stylesheet" href="<%=path%>/dist/css/base.css">
    <link rel="stylesheet" href="<%=path%>/dist/css/index.css">
</head>
<body>
<header>
    <canvas id="bubbleCanvas" width="320" height="150"></canvas>
    <h1 id="head-txt">刑技实施管理平台</h1>
    <nav class="nav-wrap">
        <!--<ul id="main-ul" class="nav">-->
        <!--<li class="nav-first" >-->
        <!--<a class="current" href="#" mol-id="fst" mol-direct="view/fst-page.html">首页</a>-->
        <!--</li>-->
        <!--<li class="nav-first">-->
        <!--<a href="javascript:void(0);" mol-id="info-mng" mol-direct="view/info-mng-index.html">信息管理</a>-->
        <!--<div class="nav-seconds">-->
        <!--<a href="#">实施项目管理</a>-->
        <!--<a href="#" mol-direct="view/info-mng-xxcm.html">项目存储过程</a>-->
        <!--<a href="#">工作存储过程</a>-->
        <!--<a href="#">系统版本管理</a>-->
        <!--<a href="#">系统参数管理</a>-->
        <!--<a href="#">模块语句管理</a>-->
        <!--<a href="#">问题共享管理</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li class="nav-first">-->
        <!--<a href="#" mol-direct="view/project-watch-index.html">项目监控</a>-->
        <!--<div class="nav-seconds">-->
        <!--<a href="#">数据实时统计</a>-->
        <!--<a href="#">数据实时监控</a>-->
        <!--<a href="#">应用服务监控</a>-->
        <!--</div>-->
        <!--</li>-->

        <!--<li class="nav-first">-->
        <!--<a href="#">二三级菜单</a>-->
        <!--<div class="nav-seconds">-->

        <!--<div class="nav-second-wrap">-->
        <!--<a href="#" class="nav-second-item">工作文档</a>-->
        <!--</div>-->

        <!--<div class="nav-second-wrap">-->
        <!--<a href="#" class="nav-second-item">存储过程</a><b>▶</b>-->
        <!--<div class="nav-third-wrap">-->
        <!--<a href="#" class="nav-third-item">项目存储</a>-->
        <!--<a href="#" class="nav-third-item">工作存储</a>-->
        <!--</div>-->
        <!--</div>-->

        <!--<div class="nav-second-wrap">-->
        <!--<a href="#" class="nav-second-item">日志反馈</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--</li>-->



        <!--<li class="nav-first hidePlus">-->
        <!--<a href="#">导航面板</a>-->
        <!--<div class="nav-second nav-pannel">-->
        <!--<div class="nav-third-wrap">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">工作日志</a></h5>-->
        <!--<a href="#">周报</a>-->
        <!--<a href="#">工作内容</a>-->
        <!--<a href="#">工作存储</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="nav-third-wrap">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">存储过程</a></h5>-->
        <!--<a href="#">项目存储</a>-->
        <!--<a href="#">工作存储</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="nav-third-wrap">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">过程管理</a></h5>-->
        <!--<a href="#">项目存储过程</a>-->
        <!--<a href="#">工作存储过程</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="nav-third-wrap">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">日志反馈</a></h5>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li class="nav-first hidePlus">-->
        <!--<a href="#">导航面板2</a>-->
        <!--<div class="nav-second nav-table">-->
        <!--<div class="nav-table-row">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">工作日志</a></h5>-->
        <!--<a href="#">周报</a>-->
        <!--<a href="#">工作内容</a>-->
        <!--<a href="#">工作存储</a>-->
        <!--</div>-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">存储过程</a></h5>-->
        <!--<a href="#">项目存储</a>-->
        <!--<a href="#">工作存储</a>-->
        <!--</div>-->
        <!--</div>-->
        <!--<div class="nav-table-row">-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">过程管理</a></h5>-->
        <!--<a href="#">项目存储过程</a>-->
        <!--<a href="#">工作存储过程</a>-->
        <!--</div>-->
        <!--<div class="nav-third">-->
        <!--<h5><a href="#">日志反馈</a></h5>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li class="nav-first">-->
        <!--<a href="#" mol-direct="view/feed-back-index.html">用户反馈</a>-->
        <!--<div class="nav-seconds">-->
        <!--<a href="#">用户反馈管理</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li class="nav-first">-->
        <!--<a href="#" mol-direct="view/reports-index.html" mol-label="统计报表"><b class="large-icon hidePlus">▤</b>统计报表</a>-->
        <!--<div class="nav-seconds">-->
        <!--<a href="#">系统使用情况统计</a>-->
        <!--</div>-->
        <!--</li>-->
        <!--<li class="nav-first bigger">-->
        <!--<a  href="#" mol-direct="view/sys-index.html" mol-label="系统设置"><b class="icon-settings"></b></a>-->
        <!--</li>-->
        <!--</ul>-->
        <ul id="main-ul" class="nav" tpsource="#nav-tp"></ul>>
        <div class="arr-l-wrap"><p class="arr-l"></p></div>
        <div class="arr-r-wrap"><p class="arr-r"></p></div>
    </nav>
</header>

<div id="root-main"></div>
<div id="root-tabs" class="easyui-tabs" style="height:720px;width:100%;">
    <!--<div title="应用面板" class="pd10">-->
    <!--<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>-->
    <!--</div>-->

    <!--<div title="当前模块:首页" no-data-options="iconCls:'icon-reload',closable:false">-->
    <!--<iframe id="mol-content" src="view/fst-page.html" frameborder="0"></iframe>-->
    <!--</div>-->

    <div title="当前模块:首页" no-data-options="iconCls:'icon-reload',closable:false">
        <div id="main">
            <div id="tree-menu"></div>
            <div id="content">
                <iframe id="main-iframe" src="view/fst-page.html"></iframe>
            </div>
        </div>
    </div>
</div>
<!--<iframe id="content" name="content" src="view/reports/reports-index.html" frameborder="0"></iframe>-->
<div id="root-mask"></div>
</body>

<!--<script src="lib/easyloader.js"></script>-->
<script src="dist/js/base.js"></script>
<!--<script src="dist/js/index.js"></script>-->
<style>

</style>

<script type="text/template" id="tree-menu-tp">
    <li class="grade-1" sec-count="{items.length}">
        <a title="{name}" direct="{direct}">{name}</a>
        <ul class="hide{items.length}">
            {{items:#<li class="grade-2"><a class="nav-link" title="{name}" direct="{direct}">{name}</a></li>#}}
        </ul>
        <b  class="hide{items.length}"></b>
    </li>
</script>

<script type="text/template" id="nav-tp">
    <li class="nav-first">
        <a href="javascript:;" mol-id="{id}" mol-direct="{direct}">{name}</a>
        <div class="nav-seconds hide{items.length}">
            {{items:#nav-sec-tp}}
        </div>
    </li>
</script>

<script type="text/template" id="nav-sec-tp">
    <div class="nav-second-wrap  no-items{items.length}">
        <a class="nav-second-item" href="javascript:;" mol-id="{id}" mol-direct="{direct}">{name}</a><b class="hide{items.length}">▶</b>
        <div class="nav-third-wrap hide{items.length}">{{items:#<a class="nav-third-item" href="javascript:;" mol-id="{id}" mol-direct="{direct}">{name}</a>#}}</div>
    </div>
</script>



<script>
    top.path='';
    function indexInit(animate) {
        if(!window.chrome){
            doc.body.innerHTML='';
            toast('请使用chrome谷歌浏览器打开本系统!',9999)
        }
        //$('#content').height(window.height-120);
        $('.nav a').on('click',function(){
            var $this=$(this);
            //frames['content'].location=$this.attr('direct');
            $('.nav a').removeClass('current');
            $this.addClass('current');
        });

        animate && $('.nav-wrap').addClass('animate') && setTimeout(function(){
            $('header').animate({height:360},1200,function(){
                var $this=$(this);
                setTimeout(function(){
                    $this.animate({height:110},1600)
                            .animate({height:120},200);
                },1600);
            });
        },300);
    }


    indexInit(localStorage.indexAnimation!=='0');


    var molDatas=[
        {
            name:'首页',
            id:'fst-page',
            direct:'fst-page.html',
            items:null
        },
        {
            name:'信息管理',
            id:'info-mng',
            items:[
                {name:'实施项目管理',id:'',direct:'info-mng-ssxm.html',items:null},
                {name:'存储过程管理',id:'',direct:null,items:[
                    {name:'项目存储过程',id:'',direct:'info-mng-xmccgc.html'},
                    {name:'工作存储过程',id:'',direct:'info-mng-gzccgc.html'}
                ]},
                {name:'系统版本管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'系统参数管理',id:'',direct:'info-mng-xxcs.html',items:null},
                {name:'模块语句管理',id:'',direct:'info-mng-mkyj.html',items:null},
                {name:'问题共享管理',id:'',direct:'info-mng-wtgx.html',items:null}
            ]
        },
        {
            name:'项目监控',
            id:'project-watch',
            items:[
                {name:'数据实时统计',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'数据实时监控',id:'',direct:'info-mng-xxcs.html',items:null},
                {name:'应用服务监控',id:'',direct:'info-mng-mkyj.html',items:null}
            ]
        },
        {
            name:'用户反馈',
            id:'feed-back',
            items:[
                {name:'用户反馈管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'培训情况维护',id:'',direct:'info-mng-xxcs.html',items:null},
                {name:'案例情况维护',id:'',direct:'info-mng-mkyj.html',items:null}
            ]
        },
        {
            name:'统计报表',
            id:'reports',
            items:[
                {name:'系统使用情况统计',id:'',direct:'info-mng-xxbb.html',items:null}
            ]
        },
        {
            name:'管理维护',
            id:'sys',
            items:[
                {name:'登录用户管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'系统角色管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'系统模块管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'登录用户管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'统计报表管理',id:'',direct:'info-mng-xxbb.html',items:null},
                {name:'统计报表维护',id:'',direct:'info-mng-xxbb.html',items:null}
            ]
        }

    ];

    $template('#main-ul',molDatas);

    window.extending({
        rootTabs:$('#root-tabs'),
        rootTreemenu:$('#tree-menu').hide()
    });

    rootTabs.height(window.height-130).tabs({'scrollIncrement':320});
    $('.nav a').click(function(){

        var $this=$(this);
        top._currentItem_=$this;
        var mlink=$this.parents('.nav-first').children('a').eq(0);

        $('.nav a').removeClass('current');
        mlink.addClass('current');


        //var src=mlink.attr('mol-direct');
        src=$this.attr('mol-direct');
        var molName=mlink.attr('mol-name')||mlink.html();
        var molId=mlink.attr('mol-id');
        var title='当前模块:'+molName//+(mlink.attr('mol-label')||$this.html());
        var molTab=rootTabs.tabs('getTab',0);
        var molItems;

        //alert(molId)
        for(var i=molDatas.length-1;i>-1;i--){
            if(molDatas[i].id==molId){
                molItems=molDatas[i].items;//log(molData);log(molDatas);
                break;
            }
        }
        $('#tree-menu').hide();


        if(molItems){
            //启动并注册左侧菜单
            $('#tree-menu').treemenu(molItems,function(src){
                byid('main-iframe').src=src;
            }).show();

            var clicked=false;
            //与导航条联动
            rootTreemenu.find('li').each(function(){
                if(!clicked && top._currentItem_ && top._currentItem_.html()==$(this).children('a',0).html()) {
                    this.click();
                    clicked=true;
                }
            });
            if(!clicked){
                rootTreemenu.find('li').eq(0).click();
            }
        }
        byid('main-iframe').src=src;

        rootTabs.tabs('update',{
            tab:molTab,
            options:{
                title:title
                //content: '<iframe class="mol-content" src="{0}" frameborder="0"></iframe>'.format(src)
            }
        }).tabs('select',0);

    });





</script>
</html>