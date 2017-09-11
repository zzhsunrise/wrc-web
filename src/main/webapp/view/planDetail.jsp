<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <title>航海计划详情</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/planListDetail.css">
</head>
<body>
<!-- 头部 -->
<div class="top">
  <div class="wrap">
    <h1 class="f-l"><img src="<%=basePath%>/images/sprite/logo.png" alt=""></h1>
    <ul class="f-r">
      <li><a target="_blank" href="<%=path%>/index">首页</a></li>
      <li><a target="_blank" href="<%=path%>/aboutUs">关于我们</a></li>
      <li><a target="_blank" href="<%=path%>/destination/info">游玩目的地</a></li>
      <li><a target="_blank" href="<%=path%>/shop">好物分享</a></li>
      <li><a target="_blank" href="<%=path%>/share">达人博客</a></li>
      <li><a target="_blank" href="<%=path%>/faq">常见问题</a></li>
    </ul>
  </div>
</div>
<!-- 头部 END -->
<!-- title -->
<div class="title">
  <div class="wrap">
    <h2>${airrouteInfo.airrouteName}<span></span></h2>
    <ul>
      <c:forEach var="keyword" items="${keyWordArr}">
      <li>${keyword}</li>
      </c:forEach>
    </ul>
  </div>
</div>
<!-- title END-->
<!-- content -->
<div class="content">
  <div class="wrap">
    <div class="f-l">
      <div class="showImg">
        <img src="<%=basePath%>/images/planListDetail/data/data00.jpg" alt="">
      </div>
      <div class="swi-nav">
        <div class="swiper-container pagenav">
          <div class="swiper-wrapper">
            <a class="swiper-slide on">
              <img src="<%=basePath%>/images/planListDetail/data/data01.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data03.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data01.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data02.jpg" alt="">
            </a>
            <a class="swiper-slide">
              <img src="<%=basePath%>/images/planListDetail/data/data03.jpg" alt="">
            </a>
          </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
      </div>
    </div>
    <div class="f-r">
      ${airrouteInfo.airrouteIntro}
    </div>
  </div>
</div>
<!-- content END-->
<!-- main -->
<div class="main wrap">
  <div class="f-l">
    <ul class="select-title">
      <li class="on">游玩特色</li>
      <li>游玩行程</li>
      <li>报名相关</li>
    </ul>
    <div class="main-content">
      <c:forEach var="featureDetail" items="${featureList}">
      <h2 class="main-title">${featureDetail.featureName}</h2>
      ${featureDetail.featureContext}
      </c:forEach>
    </div>
    <div class="main-content">
      <c:forEach var="flow" items="${flowList}">
        <div class="dayplan">
          <div class="label main-title">
            <h3>${flow.flowName}</h3>
            <span><em class="can">餐</em>${flow.includeFood}</span>
            <span><em class="su">宿</em>${flow.includeRest}</span>
          </div>
          <div class="contain">
            ${flow.flowContext}
          </div>
        </div>
      </c:forEach>
    </div>
    <div class="main-content">
      <div class="pay-list">
        <h2 class="main-title">费用总额</h2>
        <div class="contain">
          ${feeDetail.feeTotal}
          <c:if test="${feeDetail.totalRemark !=null}">
            <p class="remarks">${feeDetail.totalRemark}</p>
          </c:if>
        </div>
      </div>
      <div class="pay-list">
        <h2 class="main-title">费用包含</h2>
        <div class="contain">
          ${feeDetail.feeInclude}
            <c:if test="${feeDetail.feeInclude !=null}">
              <p class="remarks">${feeDetail.feeInclude}</p>
            </c:if>
        </div>
      </div>
      <div class="pay-list">
        <h2 class="main-title">费用不包含</h2>
        <div class="contain">
          ${feeDetail.feeHaveNot}
            <c:if test="${feeDetail.feeHaveNot !=null}">
              <p class="remarks">${feeDetail.feeHaveNot}</p>
            </c:if>
        </div>
      </div>
      <div class="returnMoney">
        <h2>退费说明</h2>
        ${feeDetail.refundContext}
      </div>
    </div>
  </div>
  <div class="f-r">
    <div class="intro">
      <h2>${destInfo.destinationCnName}介绍</h2>
      <div class="intro-content">
        ${destInfo.destinationIntro}
      </div>
    </div>
    <div class="intro">
      <h2>特别提醒</h2>
      <div class="intro-content">
        <h3>${destInfo.destinationCnName}入境条款</h3>
        ${destInfo.exitEntry}
        <h3>货币</h3>
        <div class="space"></div>
        ${destInfo.trade}
      </div>
    </div>
    <h2 class="adv">推荐自由行</h2>
    <a href="" target="_blank" class="free-list new">
      <img src="<%=basePath%>/images/planListDetail/data/data12.jpg" alt="">
      <p>【大溪地】自由行 快艇海豚 百年茶园 23色土庄园四驱车</p>
      <div class="price">
        <span>￥630~700 / 人起</span>
        <ul>
          <li class="chuanpiao"></li>
          <li class="chuanpiao2"></li>
          <li class="plane"></li>
        </ul>
      </div>
    </a>
  </div>
</div>
<!-- main END-->
<!-- 底部 -->
<div class="footer">
  <div class="wrap o-h">
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/logo_foot.png" alt=""></h2>
      <p>“<span>玩儿船</span>”隶属于风行海商务服务(北京)
        有限公司，是一家整合全球岛屿旅游资源及
        提供游艇租赁的私属定制机构。</p>
    </div>
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/icon02.png" alt="">联系我们</h2>
      <p class="us">
        <span>客服电话：</span>
        <em>国内：+86-18653289591</em>
      </p>
      <p class="us"><span></span><em>国外：+230 57655895</em></p>
      <p class="us">
        <span>联系地址：</span>
        <em>中国北京市海淀区交大东路</em>
      </p>
      <p class="us"><span></span><em>66号院1号楼262</em></p>
    </div>
    <div class="footer-li">
      <h2><img src="<%=basePath%>/images/sprite/icon03.png" alt="">合作商家</h2>
      <ul class="other">
        <li><img src="<%=basePath%>/images/sprite/tao.png" alt="">淘宝</li>
        <li><img src="<%=basePath%>/images/sprite/wei.png" alt="">携程</li>
        <li><img src="<%=basePath%>/images/sprite/xie.png" alt="">微博</li>
      </ul>
    </div>
    <div class="footer-li code">
      <img src="<%=basePath%>/images/sprite/code.png" alt="">
      <h4>关注微信公众号</h4>
    </div>
  </div>
  <div class="copyright ">
    <p class="wrap">版权所有：玩儿船 Copyright © 2013 com All rights reserved.  京ICP 证13029641号  风行海商务服务(北京)有限公司</p>
  </div>
</div>
<!-- 底部 End-->
<script src="<%=basePath%>/js/libs/swiper/idangerous.swiper.min.js"></script>
<script src="<%=basePath%>/js/libs/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>/js/planListDetail.js"></script>
<script>
  planListDetail.init();
</script>
</body>
</html>