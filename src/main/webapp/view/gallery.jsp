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
  <title>Gallery</title>
  <link rel="shortcut icon" href="<%=basePath%>/pages/common/images/favicon.ico">
  <link rel="stylesheet" href="<%=basePath%>/css/swiper.css">
  <link rel="stylesheet" href="<%=basePath%>/css/common.css">
  <link rel="stylesheet" href="<%=basePath%>/css/photoList.css">
</head>
<body>
<!-- 头部 -->
<div class="top">
  <div class="wrap">
    <h1 class="f-l"><a  target="_blank" href="<%=path%>/index" alt=""/></h1>
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
<!-- banner -->
<div class="banner">
  <img src="<%=basePath%>/images/photoList/data/data01.jpg" alt="">
</div>
<!-- banner END-->
<!-- content -->
<div class="content">
  <div class="wrap">
    <div class="position-nav">
      <span>当前位置 : 首页 >></span>
      <em>Gallery</em>
    </div>
    <!-- main -->
    <div class="main">
      <c:forEach var="albumInfo" items="${albumList}" begin="0" end="${albumList.size()}" varStatus="status">
        <div class="sharelist">
          <input type="hidden" value="${albumInfo.id}" class="albumId">
          <img src="<%=basePath%>${albumInfo.coverUrl}" alt="">
          <div class="contain">
            <h2>${albumInfo.albumName}</h2>
            <p>${albumInfo.albumIntro}</p>
          </div>
        </div>
      </c:forEach>
      <ul class="label">
      </ul>
      <div class="collect">
        <dl class="f-l">
          <dt>07.10</dt>
          <dd>2017</dd>
        </dl>
        <div class="share f-r">
          <span>分享</span>
        </div>
        <div class="collection f-r">
          <span>1205</span>
        </div>
      </div>
    </div>
    <!-- main End-->
    <div class="photoWrap">

    </div>

    <!-- 分页器 -->
    <div class="page-nav">
      <div class="f-l">
        <a href="" class="last"></a>
        <ul>
          <li class="on"><a href="">1</a></li>
          <li><a href="">2</a></li>
          <li><a href="">3</a></li>
          <li><a href="">4</a></li>
          <li><a href="">5</a></li>
          <li><a href="">...</a></li>
          <li><a href="">8</a></li>
        </ul>
        <a href="" class="next"></a>
      </div>
      <div class="f-r">显示 1~10条 共100条</div>
    </div>
    <!-- 分页器 End-->
  </div>
</div>

<!-- content END-->
<!-- 目的地 -->
<div class="advplace">
  <div class="wrap">
    <div class="list">
      <a href="<%=path%>/destination/detail?id=2" class="list-li">
        <h3>/ 毛里求斯 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd1.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=1">
        <div class="list-li">
          <h3>/ 古巴 /  </h3>
          <img src="<%=basePath%>/pages/common/images/data/tjmdd2.jpg" alt="">
        </div>
      </a>
      <a href="<%=path%>/destination/detail?id=6" class="list-li">
        <h3>/ 希腊 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd3.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=3" class="list-li">
        <h3>/ 克罗地亚 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd4.jpg" alt="">
      </a>
      <a href="<%=path%>/destination/detail?id=5" class="list-li">
        <h3>/ 泰国 / </h3>
        <img src="<%=basePath%>/pages/common/images/data/tjmdd5.jpg" alt="">
      </a>
    </div>
  </div>
</div>
<!-- 目的地 END-->
<!-- 底部 -->
<div class="footer">
  <div class="wrap o-h">
    <div class="footer-li">
      <h2 class="intro_bg"></h2>
      <p>“<span>玩儿船</span>”隶属于风行海商务服务(北京)
        有限公司，是一家整合全球岛屿旅游资源及
        提供游艇租赁的私属定制机构。</p>
    </div>
    <div class="footer-li">
      <h2 class="tel_bg">联系我们</h2>
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
      <h2 class="shop_bg">合作商家</h2>
      <ul class="other">
        <li><img src="<%=basePath%>/images/sprite/tao.png?_sprite" alt="">淘宝</li>
        <li><img src="<%=basePath%>/images/sprite/wei.png?_sprite" alt="">微博</li>
        <li><img src="<%=basePath%>/images/sprite/xie.png?_sprite" alt="">携程</li>
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
<script src="<%=basePath%>/js/photoList.js"></script>
<script>
  photoList.init();
</script>
</body>
</html>
