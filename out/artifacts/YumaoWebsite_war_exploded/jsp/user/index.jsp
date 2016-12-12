<%--
  Created by IntelliJ IDEA.
  User: niuhongbin
  Date: 16/12/12
  Time: 下午3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/jsp/user/";
    String basePath1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML>

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>漯河迎辉羽毛</title>

    <meta content="漯河迎辉羽毛" name="keywords"/>

    <meta content="漯河迎辉羽毛" name="description"/>

    <link href="<%=basePath%>css/base.css" rel="stylesheet" type="text/css">

    <link href="<%=basePath%>css/pagename.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="<%=basePath%>js/jquery-1.6.2.min.js"></script>

    <script type="text/javascript" src="<%=basePath%>js/jquery.SuperSlide.2.1.js"></script>

</head>


<body>


<!--header开始-->

<div class="header">

    <div class="w1000">

        <p>你好，欢迎光临漯河迎辉羽毛！</p>

    </div>

</div>


<div class="w1000">

    <div class="header_bottom">

        <s:a href="#"><img src="<s:property value="%{logo}"/>" width="294" height="49" alt="" title="漯河迎辉羽毛"></s:a>

        <ul>
            <li><a href="<%=basePath1%>index_findAll.action">网站首页</a></li>
            <li><a href="template/historic.html">迎辉简介</a></li>
            <li><a href="template/delicacy.html">产品中心</a></li>
            <li><a href="template/leave.html">留言</a></li>
            <li><a href="template/connection.html">联系我们</a></li>

        </ul>

    </div>

</div>


<!--header结束-->


<div class="container">

    <!--banner开始-->

    <!-- <div class="banner">

         <div class="bd">

             <ul>

                 <li style="background:url(images/banner_4.jpg) no-repeat center top;"></li>

                 <li style="background:url(images/banner_2.jpg) no-repeat center top;"></li>


             </ul>

         </div>

         <div class="hd">

             <ul>

                 <li></li>

                 <li></li>

             </ul>

         </div>

         <a class="prev" href="javascript:void(0)"></a>

         <a class="next" href="javascript:void(0)"></a>

     </div>
     &lt;!&ndash;调用JS模块图片滚动&ndash;&gt;
     <script type="text/javascript">jQuery(".banner").slide({
         titCell: ".hd ul",
         mainCell: ".bd ul",
         effect: "fold",
         delayTime: 1000,
         interTime: 5000,
         autoPlay: true,
         autoPage: true,
         trigger: "click"
     });</script>-->

    <!--banner结束-->


    <!--content开始-->

    <div class="content">


        <div class="zjfc">

            <p class="p_tit1">热门产品</p>

            <div class="picScroll-left">

                <div class="hd">

                    <a class="next"><</a>

                    <a class="prev">></a>

                </div>

                <div class="bd">

                    <ul class="picList">
                        <s:iterator value="hotProduct" var="h">
                            <li>
                                <div class="pic"><img src="<%=basePath%>images/201410301619396038.jpg" width="231"
                                                      height="151"/></div>
                            </li>
                        </s:iterator>

                    </ul>

                </div>

            </div>


            <!--为秀丽南宁模块图片向左滚到-->

            <script type="text/javascript">

                jQuery(".picScroll-left").slide({
                    titCell: ".hd ul",
                    mainCell: ".bd ul",
                    autoPage: true,
                    effect: "left",
                    autoPlay: true,
                    vis: 4,
                    trigger: "click"
                });

            </script>


        </div>
        <p class="p_tit1">关于迎辉羽毛</p>

        <ul class="ul_jishu clearfix">

            <li class="fl">

                <a href="template/introduce.html"><img src="<%=basePath%>images/pic_1.jpg" width="291" height="126"
                                                       alt="" title=""></a>

                <p>
                    <a href="template/introduce.html">迎辉简介</a>
                    南宁，简称“邕”，是广西壮族自治区首府，全区政治、经济、交通、科教文卫、金融和信息中心，是中国面向东盟开放合作的前沿城市、中国—东盟博览会永久举办地、北部湾经济区核心城市、国家“一带一路”有机衔接的重要门户城市。
                </p>

            </li>

            <li class="fl ml20">

                <a href="template/Culture.html"><img src="<%=basePath%>images/pic_2.jpg" width="291" height="126" alt=""
                                                     title=""></a>

                <p>
                    <a href="template/Culture.html">企业文化</a>
                    南宁别称绿城、凤凰城、五象城。旅游资源丰富，北连桂林，南接北海，构成了广西的黄金旅游带。壮丽的边关风采、浪漫的海滩风貌、迷人的异国情调，星罗棋布的灵山秀水，古朴悠远的古迹故址，山、水、人、情构成南宁多层次的旅游景观。
                </p>

            </li>

            <li class="fr">

                <a href="template/historic.html"><img src="<%=basePath%>images/pic_3.jpg" width="291" height="126"
                                                      alt=""
                                                      title=""></a>

                <p>
                    <a href="template/historic.html">迎辉简介</a>
                    南宁历史悠久，在古代，南宁属于百越领地。秦始皇统一岭南地区后，南宁属于桂林郡。西汉时期，汉武帝又将它置于玉林郡管辖。东晋大兴元年（公元318年），置大兴郡，以南宁为郡治所在地，南宁建制从此开始，至今已有1600多年。
                </p>

            </li>

        </ul>


    </div>

    <!--content 结束-->

</div>

<!--footer开始-->

<div class="footer">
    <p>Copyright &copy; 2016 All Rights Reserved 版权所有 </p>
    <p>地址：河南省漯河市郾城区陇城镇钮王村工业区 </p>

</div>


<!--footer 结束-->

</body>

</html>


