<<<<<<< HEAD
xxx
=======
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>evan's simple-template111111 </title>
    <style>
        .hide{display:none;}
        table{
            border-collapse: collapse;
            margin-top:30px;
            box-shadow: 3px 5px 3px #aaa;
        }
        tr:hover{
            background: oldlace;
        }
        td,th{
            min-width: 70px;
            padding:10px;
            border: 1px solid #999;
        }
        th{
            background:#777;
            color:#fff;
        }
        button{
            height:26px;
            width:60px;
            border:none;
            background: orange;
            color:#fff;
            border-radius: 3px;
            cursor: pointer;
        }
        button:hover{
            background: orangered;
        }
        #info tr td:nth-child(odd),
        .someone tr td:nth-child(odd){
            color:#888;
        }
        [type="button"]{
            width:70px;
            line-height:36px;
        }
        [limitid]{
            color:#eee;
        }
        [haslimit="1"]{
            color:black;
        }
        .stp-cell{
            overflow: hidden;
            border: 6px groove skyblue;
            padding: 5px;
        }
        .stp-label{
            float: left;
            min-width:5em;
        }
        .stp-val{
            float:left;
            padding-left: 10px;
            border-left: 1px dashed #aaa;
        }
    </style>
</head>
<body>


<table id="plus-main">
    <thead>  <th>父亲</th> <th>母亲</th> <th>姓名</th> <th>年龄</th>  <th>婚姻状况</th> <th>操作</th></thead>
    <tbody id="main">
    <tr tpindex="{$index}"  msg="{context.msg}">
        <td>{family.dad}</td>
        <td>{family.mum}</td>
        <td><a href="{href}">{name}</a></td>
        <td>{age}</td>
        <td>{marry}</td>
        <td><button param="{href}">关注</button></td>
    </tr>
    </tbody>
</table>


<table id="info"  tpsource="#detail" ></table>


<script type="text/template" id="detail">
    <tr msg="{context.msg}">
        <td>姓名:</td>  <td>{name}</td>  <td>年龄:</td>  <td>{age}</td></tr>
    <tr>
        <td>父亲:</td>  <td>{family.dad}</td>  <td>母亲:</td>  <td>{family.mum}</td></tr>
    <tr>
        <td>婚姻状况:</td>  <td>{marry}</td> <td>工作状况:</td>  <td>{job}</td>
    </tr>
    <tr>
        <td>个人主页:</td>  <td colspan="3"><a href="{href}">{href}</a>长度{href.length}-{href.toUpperCase}</td>
    </tr>
    <tr>
        <td>家庭背景:</td>  <td colspan="3">{family.back}</td>
    </tr>
    {{#collage}}
</script>


<script type="text/template" id="collage">
    <tr>
        <td>毕业院校:</td>  <td colspan="3"><a href="{collage.href}">{collage.name}</a></td>
    </tr>
    <tr>
        <td>串并案导出Excel:{this.diy.excel}</td>
        <td><input type="button" limitid="cba2excel" haslimit="{this.cba2excel}" value="点击"></td>
        <td>串并案报表编辑:{this.diy.doc}</td>
        <td><input type="button" limitid="cbaReportEdit" haslimit="{this.cbaReportEdit}" value="点击"></td>
    </tr>
    <tr>
        <td>串并案报表自定义:</td>
        <td><input type="button" limitid="cbaReportDiy" haslimit="{this.cbaReportDiy}" value="点击"></td>
        <td>工作日志导出:</td>
        <td><input type="button" limitid="dairy2excel"  haslimit="{this.dairy2excel}" value="点击"></td>
    </tr>
    <tr>
        <td>监控地点切换:</td>
        <td><input type="button" limitid="wacthToggle" haslimit="{this.wacthToggle}" value="点击"></td>
        <td>监控项目编辑:</td>
        <td><input type="button" limitid="wacthEdit"  haslimit="{this.wacthEdit}" value="点击"></td>
    </tr>
</script>

</body>

<script type="text/javascript" src="js/stp/stp.js"></script>
<script>

    //假设以下是取到的权限控制信息
    var limits={
        //可访问的页面
        pages:[
            {index:[]},
            {cbaReport:['cbaReportA','cbaReportB']},
            {dairy:['dairyA','dairyB','dairyC']},
            {watch:['watchA','watchB']},
            {sys:false}
        ],
        //可操作的按钮
        ctrls:{
            'cba2excel':1,
            //'cbaReportEdit':0,
            //'cbaReportDiy':0,
            'dairy2excel':1,
            'wacthToggle':1,
            //'wacthEdit':0,
            'diy':{excel:2,doc:0}
        }
    };

    // 某个存有信息的全局对象
    var context={msg:'hi every!'};


    // 获取的人员列表 stp支持多级对象属性的嵌套获取，但可以的话，扁平化的数据结构更简单更好。也就是后台全提供为第一级属性
    var data=[
        {name:'evan',age:25,href:'http://evan.com',family:{dad:'joe',mum:'jane'},marry:'已婚',t:{x:{y:999}}},
        {name:'helen',age:27,href:'http://helen.com',family:{dad:'wang',mum:'xiu'},marry:'',collage:{name:'宁波师范大学',href:'http://kmust.edu'}},
        {name:'rose',age:25,href:'http://rose.net',family:{dad:'wang',mum:'cai',back:'文学世家'},marry:'离异'},
        {name:'david',age:37,href:'http://david.com',family:{dad:'liang',mum:'zhang'},marry:'未婚',collage:{name:'上海财经大学'}},
        {name:'kevin<script>alert()</'+'script>',age:26,href:'http://www.kevin.cn',family:{dad:'wu',mum:'fen'},marry:'已婚',job:'hacker'}
    ];

    // 基本的使用 list类型与map类型--------------------------最典型的
    $template('#main',data);
    $template('#info',data[0],'暂无信息');

    // 手动逐项挂钩额外数据,再执行
    // for(var i=data.length-1;i>-1;i--){
    // 	data[i].context=context;
    // }
    // $template('#main',data);

    // 整体挂钩为指定键名‘this’（废弃）
    // data['this']=context;

    // 正统利用this
    // $template.apply(context,['#main',data]);

    // 手动helper (折中)
    $template('#main',data,function(item,i){
        item.context=context;
    });

    // helper与apply结合-----------------------------记得这个和最典型就够了
    $template.apply(limits.ctrls,['#info',data[0],function(item,i){
        // 利用apply把制定对象作为this传进去
        // 而利用helper做数据加工
        // if(item.exam>item.exam2) item.compare='bigger';
        // if(item.scroe>60) item.level='C;
        // 循环每个item时，将会执行这些,再将数据注入模版，从而可以获得原始数据没有的属性。对需要加工转化的数据显示非常有用
    }]);

    // 点击列表项显示详情（可忽略）
    var people=main.getElementsByTagName('tr');
    for(var i=0;i<people.length;i++){
        people[i].getElementsByTagName('button')[0].onclick=(function(i){
            return function(){
                //$template('#info',data[this.getAttribute('tpindex')]);
                data[i].this=limits.ctrls
                $template('#info',data[i])
            }
        })(i);
    }

    // 经过权限或配置过滤后的列信息，也就是只供这些项可显示
    var config={
        cols:[
            {name:'name',label:'姓名'},
            {name:'age',label:'年龄'},
            {name:'marry',label:'婚姻情况'}
        ]
    };
    var config2={
        cols:[
            {name:'name',label:'姓名',labelClass:'ncls',valClass:'ncls2'},
            {name:'age',label:'年龄'},
            {name:'href',label:'博客'},
            {name:'family.dad',label:'父亲'},
            {name:'marry',label:'婚姻情况'}
        ],
        type:'map'
    };

    setTimeout(function(){
        alert('change');
        $templatePlus('#plus-main',config,data);
        $templatePlus('#info',config2,data[0]);
    },3000);


</script>
</html>
>>>>>>> 0888e86b260b115b27c2399d6760119df8a2e562
