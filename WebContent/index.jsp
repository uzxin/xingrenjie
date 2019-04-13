<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="TTUNION_verify" content="b846c3c2b85efabc496d2a2b8399cd62">
	<meta name="baidu_union_verify" content="cac58ed2e3155eda17d13f99c687243a">
	<meta name="sogou_site_verification" content="gI1bINaJcL">
	<meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="keywords" content="网站模板templates,AUI素材网, AUI素材网站, UI设计, AUI素材网HTML源码-网站模板-APP模板-素材网psd_AUI素材网_模板_AUI素材网-app素材网，移动应用界面设计, app设计, 网站模板, js特效, jquery效果, 界面设计, 交互设计, 主题设计">
	<meta name="description" content="网站模板templates,AUI素材网是在线提供网站源码html下载、App设计、手机模板网站下载、微信小程序页面下载、app内嵌页面下载、以企业官网、个人网站、社区论坛、商城购物网站、专题模板等html源码下载。">
	<meta name="author" content="AUI, a-ui.com">
	<meta name="baidu-site-verification" content="ZVPGgtpUfW">
	<title>杏仁街</title>
	<link rel="icon" type="image/x-icon" href="http://www.17sucai.com/preview/10221/2018-01-18/jiayouyigou/favicon.ico">
	<link href="http://www.17sucai.com/preview/10221/2018-01-18/jiayouyigou/iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">

	<meta http-equiv="X-UA-Compatible" content="edge">
	<link rel="stylesheet" type="text/css" href="首页/index.css">
	<script src="首页/jquery-1.js"></script>
	<script src="首页/jquery.js"></script>
	<script src="首页/public.js"></script>
	<script src="首页/base.js"></script>
	<script>
        document.createElement("top")
	</script>
	<script>
        document.createElement("search")
	</script>
	<script>
        document.createElement("light")
	</script>
	<script>
        document.createElement("light1")
	</script>
</head>
<body>
<!--最大的背景-->
<div class="maxbj"></div>
<!--头部-->
<top style="margin-top: -400px;">
	<section class="seck">
		
		<div class="register_login">
			<em>您好，</em>
			<a href="${pageContext.request.contextPath }/login.jsp">会员登录</a>
			<a href="${pageContext.request.contextPath }/register.jsp">快速注册</a>
		</div>
		<div class="vip_center">
			<a href="${pageContext.request.contextPath}/admin/login.jsp">卖家中心</a>
			<a href="#">帮助</a>
		</div>
	</section>
</top>
<!--header-->
<div class="maxbj1">
	<header>
		<h1 class="logo logo-size">
			<img src="首页/logo.png">
		</h1>
		<search>
			<form>
				<input type="text" placeholder="请输入您要搜索的商品..." required="" style=" width:610px; height:34px; text-indent:2em; float:left; box-shadow:none">
				<button>搜索</button>
			</form>
		</search>
		<div class="sping_car">
			<b></b>
			<em>我的购物车</em>
		</div>
	</header>
</div>
<!--导航-->
<section class="dao_hang">
	<nav>
		<!--右下侧广告-->
		<div class="advertisement" style="top: 42px; opacity: 1;">
			<h4>最新公告</h4>
			<div class="notice_new">
				<c:forEach items="${adverList }" var="adver">
					<p><a href="#">${adver.name }</a></p>
				</c:forEach>
			</div>
			<a href="#">
				<div class="notice_img">
					<img src="首页/activity.jpg" class="img1">
					<img src="首页/activity.jpg" class="img2">
				</div>
			</a>
		</div>
		<!--全部商品分类-->
		<div class="important">
			<img src="首页/all_list.png" style=" margin-top:13px">
			全部商品分类
			<aside style="top: 42px; opacity: 1;">
				<ul>
					<li class="cates yanses" mt-ct="list01">
						<h3>潮流男装</h3>
						<p>
							<c:forEach items="${list2 }" begin="0" end="2" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list02">
						<h3>时尚女装</h3>
						<p>
							<c:forEach items="${list2 }" begin="5" end="7" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list03">
						<h3>手机数码</h3>
						<p>
							<c:forEach items="${list2 }" begin="10" end="12" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list04">
						<h3>电脑办公</h3>
						<p>
							<c:forEach items="${list2 }" begin="15" end="17" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list05">
						<h3>母婴童装</h3>
						<p>
							<c:forEach items="${list2 }" begin="20" end="22" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list06">
						<h3>家用电器</h3>
						<p>
							<c:forEach items="${list2 }" begin="25" end="27" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>
					<li class="cates" mt-ct="list07">
						<h3>食品生鲜</h3>
						<p>
							<c:forEach items="${list2 }" begin="30" end="32" var="list2">
								<a href="#">${list2.cname }</a>
							</c:forEach>
							<i style="font-family:'宋体';color:#666; line-height:23px; padding-right:20px; font-size:14px; float:right">&gt;</i>
						</p>
					</li>

				</ul>
			</aside>
			<div>
				<div class="import_list b-list01" style="display: none;">
					<c:forEach items="${list2 }" begin="0" end="4" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list02" style="display: none;">
					<c:forEach items="${list2 }" begin="5" end="9" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list03" style="display: none;">
					<c:forEach items="${list2 }" begin="10" end="14" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list04" style="display: none;">
					<c:forEach items="${list2 }" begin="15" end="19" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list05" style="display: none;">
					<c:forEach items="${list2 }" begin="20" end="24" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list06" style="display: none;">
					<c:forEach items="${list2 }" begin="25" end="29" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
				<div class="import_list b-list07" style="display: none;">
					<c:forEach items="${list2 }" begin="30" end="34" var="list2">
						<dt>${list2.cname }</dt>
						<c:forEach items="${list2.list3 }" begin="0" end="5" var="list3">
							<a style="color: black;font-size: 15px" href="#">&nbsp${list3.cname }&nbsp</a>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--结束-->
		<div class="dao_list">
			<a href="#">首页</a>
			<c:forEach items="${list1 }" var="list1">
				<a href="#">${list1.cname }</a>
			</c:forEach>
			<a href="#">特卖专区</a>
		</div>
	</nav>
</section>
<!--banner-->
<div id="banner_tabs" class="flexslider" style="margin-top: 0px;">
	<ul class="slides">
		<li style="position: absolute; left: 0px; top: 0px; display: none;">
			<a title="" target="_blank" href="#">
				<img alt="" style="background:#e1211e url(images/ba1.jpg) no-repeat center;" src="首页/alpha.png" width="1920" height="500">
			</a>
		</li>
		<li style="position: absolute; left: 0px; top: 0px; display: none;">
			<a title="" href="#">
				<img alt="" style="background:#900 url(images/ba2.jpg) no-repeat center;" src="首页/alpha.png" width="1920" height="500">
			</a>
		</li>
		<li style="position: absolute; left: 0px; top: 0px; display: list-item;">
			<a title="" target="_blank" href="#">
				<img alt="" style="background:#e1211e url(images/ba1.jpg) no-repeat center;" src="首页/alpha.png" width="1920" height="500">
			</a>
		</li>
		<li style="position: absolute; left: 0px; top: 0px; display: none;">
			<a title="" href="#">
				<img alt="" style="background:#900 url(images/ba2.jpg) no-repeat center;" src="首页/alpha.png" width="1920" height="500">
			</a>
		</li>
	</ul>
	<ul class="flex-direction-nav">
		<li>
			<a class="flex-prev" href="javascript:;">Previous</a>
		</li>
		<li>
			<a class="flex-next" href="javascript:;">Next</a>
		</li>
	</ul>
	<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
		<li class="">
			<a>1</a>
		</li>
		<li class="">
			<a>2</a>
		</li>
		<li class="active">
			<a>2</a>
		</li>
		<li class="">
			<a>2</a>
		</li>
	</ol>
</div>
<script src="首页/slider.js"></script>
<!--gong告-->
<script type="text/javascript">

</script>
<!--楼层分布图-->
<div class="fixed_position">
	<div class="fixed_position_1">
		<ul>
			<c:forEach items="${list1 }" var="list1">
				<li>${list1.cname }</li>
			</c:forEach>
			<li>特卖专区</li>
		</ul>
	</div>
</div>
<!--潮流男装-->
<span class="as blessing_package pick-back-b">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back1">潮流男装</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-1-lt01 yadi" dg-floor="0" dg-ct="lt01">${list2[0].cname }</li>
                    <li class="dog d-1-lt02" dg-floor="0" dg-ct="lt02">${list2[1].cname }</li>
                    <li class="dog d-1-lt03" dg-floor="0" dg-ct="lt03">${list2[2].cname }</li>
                    <li class="dog d-1-lt04" dg-floor="0" dg-ct="lt04">${list2[3].cname }</li>
                    <li class="dog d-1-lt05" dg-floor="0" dg-ct="lt05">${list2[4].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-0-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥4299.00</span>
				<a href="#">
					<p>海尔冰箱（haier）BCD-642WDVMU1 642升风冷无霜对开门 智能 大容积  </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥2149</span>
				<a href="#">
					<p>【官网价直降1100】Apple iPhone 6s Plus 32G 玫瑰金 移动联通电信4G 手机</p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-0-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-0-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-0-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--时尚女装-->
<span class="as blessing_package pick-back-b">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back2">时尚女装</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-1-lt01 yadi" dg-floor="1" dg-ct="lt01">${list2[5].cname }</li>
                    <li class="dog d-1-lt02" dg-floor="1" dg-ct="lt02">${list2[6].cname }</li>
                    <li class="dog d-1-lt03" dg-floor="1" dg-ct="lt03">${list2[7].cname }</li>
                    <li class="dog d-1-lt04" dg-floor="1" dg-ct="lt04">${list2[8].cname }</li>
                    <li class="dog d-1-lt05" dg-floor="1" dg-ct="lt05">${list2[9].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-1-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥4299.00</span>
				<a href="#">
					<p>海尔冰箱（haier）BCD-642WDVMU1 642升风冷无霜对开门 智能 大容积  </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥2149</span>
				<a href="#">
					<p>【官网价直降1100】Apple iPhone 6s Plus 32G 玫瑰金 移动联通电信4G 手机</p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-1-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/add1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-1-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-1-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--手机数码-->
<span class="as blessing_package pick-back-c">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back3">手机数码</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-2-lt01 yadi" dg-floor="2" dg-ct="lt01">${list2[10].cname }</li>
                    <li class="dog d-2-lt02" dg-floor="2" dg-ct="lt02">${list2[11].cname }</li>
                    <li class="dog d-2-lt03" dg-floor="2" dg-ct="lt03">${list2[12].cname }</li>
                    <li class="dog d-2-lt04" dg-floor="2" dg-ct="lt04">${list2[13].cname }</li>
                    <li class="dog d-2-lt04" dg-floor="2" dg-ct="lt05">${list2[14].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-2-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-2-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-2-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-2-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-2-lt05" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-2-lt06" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--电脑办公-->
<span class="as blessing_package pick-back-d">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back4">电脑办公</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-3-lt01 yadi" dg-floor="3" dg-ct="lt01">${list2[15].cname }</li>
                    <li class="dog d-3-lt02" dg-floor="3" dg-ct="lt02">${list2[16].cname }</li>
                    <li class="dog d-3-lt03" dg-floor="3" dg-ct="lt03">${list2[17].cname }</li>
                    <li class="dog d-3-lt04" dg-floor="3" dg-ct="lt04">${list2[18].cname }</li>
                    <li class="dog d-3-lt04" dg-floor="3" dg-ct="lt05">${list2[19].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-3-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-3-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-3-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad8.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad8.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad8.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad8.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad8.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-3-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-3-lt05" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-3-lt06" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--母婴童装-->
<span class="as blessing_package pick-back-e">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back5">母婴童装</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-4-lt01 yadi" dg-floor="4" dg-ct="lt01">${list2[20].cname }</li>
                    <li class="dog d-4-lt02" dg-floor="4" dg-ct="lt02">${list2[21].cname }</li>
                    <li class="dog d-4-lt03" dg-floor="4" dg-ct="lt03">${list2[22].cname }</li>
                    <li class="dog d-4-lt04" dg-floor="4" dg-ct="lt04">${list2[23].cname }</li>
                    <li class="dog d-4-lt04" dg-floor="4" dg-ct="lt05">${list2[24].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-4-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt05" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt06" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad6.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-4-lt07" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--家用电器-->
<span class="as blessing_package pick-back-f">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back6">家用电器</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-5-lt01 yadi" dg-floor="5" dg-ct="lt01">${list2[25].cname }</li>
                    <li class="dog d-5-lt02" dg-floor="5" dg-ct="lt02">${list2[26].cname }</li>
                    <li class="dog d-5-lt03" dg-floor="5" dg-ct="lt03">${list2[27].cname }</li>
                    <li class="dog d-5-lt04" dg-floor="5" dg-ct="lt04">${list2[28].cname }</li>
                    <li class="dog d-5-lt04" dg-floor="5" dg-ct="lt05">${list2[29].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-5-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-5-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-5-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-5-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-5-lt05" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--食品生鲜-->
<span class="as blessing_package pick-back-f">
            <a href="#" style=" color:#000">
                <h3 style="float:left" class="pick-back6">食品生鲜</h3>
            </a>
            <div class="detailed_navigation">
                <ul>
                    <li class="dog d-5-lt01 yadi" dg-floor="5" dg-ct="lt01">${list2[30].cname }</li>
                    <li class="dog d-5-lt02" dg-floor="6" dg-ct="lt02">${list2[31].cname }</li>
                    <li class="dog d-5-lt03" dg-floor="6" dg-ct="lt03">${list2[32].cname }</li>
                    <li class="dog d-5-lt04" dg-floor="6" dg-ct="lt04">${list2[33].cname }</li>
                    <li class="dog d-5-lt04" dg-floor="6" dg-ct="lt05">${list2[34].cname }</li>
                </ul>
            </div>
        </span>
<div>
	<div class="currency f-6-lt01">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad5.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-6-lt02" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-6-lt03" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-6-lt04" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
	<div class="currency f-5-lt05" style="display:none">
		<ul>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
			<li>
				<a href="#">
					<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
				</a>
				<light1>
					<img src="首页/saoguang.png">
				</light1>
				<span>￥199</span>
				<a href="#">
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<em>
					<a href="#">收藏</a>
					<a href="javascript:void(0)" class="add_scar">加入购物车</a>
				</em>
			</li>
		</ul>
	</div>
</div>
<!--特卖专区-->
<div class="as kongzhianniu">
	<div class="lunbobanner">
		<ul class="lunboimg" style="left: -2400px;">
			<li>
				<a href="#">
					<b>
						<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
			</li>
			<li>
				<a href="#">
					<b>
						<img src="首页/ad1.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad7.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
			</li>
		<li>
				<a href="#">
					<b>
						<img src="首页/ad4.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad9.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad2.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
				<a href="#">
					<b>
						<img src="首页/ad3.jpg" style=" margin:0 auto; display:block; width:220px; height:220px">
					</b>
					<span>￥199</span>
					<p>Apple iPad MPGW2CH/A 平板电脑 9.7英寸（128G/WLAN）金色 </p>
				</a>
			</li></ul>
	</div>
	<div class="btnl">《</div>
	<div class="btnr">》</div>
	<h4 class="guanfangremai">特卖专区</h4>
</div>
<footer>
	<div class="pc-footer-top">
		<div class="center">
			<ul class="clearfix">
				<li>
					<span>关于我们</span>
					<a href="#">关于我们</a>
					<a href="#">诚聘英才</a>
					<a href="#">用户服务协议</a>
					<a href="#">网站服务条款</a>
					<a href="#">联系我们</a>
				</li>
				<li class="lw">
					<span>购物指南</span>
					<a href="#">新手上路</a>
					<a href="#">订单查询</a>
					<a href="#">会员介绍</a>
					<a href="#">网站服务条款</a>
					<a href="#">帮助中心</a>
				</li>
				<li class="lw">
					<span>消费者保障</span>
					<a href="#">人工验货</a>
					<a href="#">退货退款政策</a>
					<a href="#">运费补贴卡</a>
					<a href="#">无忧售后</a>
					<a href="#">先行赔付</a>
				</li>
				<li class="lw">
					<span>商务合作</span>
					<a href="#">人工验货</a>
					<a href="#">退货退款政策</a>
					<a href="#">运费补贴卡</a>
					<a href="#">无忧售后</a>
					<a href="#">先行赔付</a>
				</li>
				<li class="lss">
					<span>下载手机版</span>
					<div class="clearfix lss-pa">
						<div class="fl lss-img"><img src="首页/code.png" alt=""></div>
						<div class="fl" style="padding-left:20px; float:left;">
							<h4>扫描下载云购APP</h4>
							<p style="font-size:12px; color:#666;">把优惠握在手心</p>
							<p style="font-size:12px; color:#666;">把潮流带在身边</p>
							<p></p>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="pc-footer-lin">
			<div class="center">
				<p>友情链接：
					<a href="http://www.a-ui.cn/" target="_blank">AUI素材网</a>
					<a href="https://xihazahuopu.taobao.com/" target="_blank">暿哈杂货铺</a>
					<a href="#">手游交易平台</a>
					<a href="#">法律咨询</a>
					<a href="#">深圳地图</a>
					<a href="#">P2P网贷导航</a>
					<a href="#">名鞋库</a>
					<a href="#">叮当音乐网</a>
					<a href="#">名鞋库</a>
					<a href="#">114票务网</a>
					<a href="#">儿歌视频大全</a>
				</p>
				<p>
					京ICP证1900075号  京ICP备20051110号-5  京公网安备110104734773474323  统一社会信用代码 
91113443434371298269B  食品流通许可证SP1101435445645645640352397
				</p>
				<p style="padding-bottom:30px">版物经营许可证 新出发京零字第朝160018号  Copyright©2011-2015 版权所有 ZHE800.COM </p>
			</div>
		</div>
	</div>
</footer>
<!--侧边栏-->
<div class="toolbar">
	<a href="###" class="toolbar-item toolbar-item-weixin" style=" position:relative">
		<em style=" position:absolute; display:block; line-height:20px; font-size:12px; color:#f00; top:-20px; left:0">(0)</em>
		<!--<span class="toolbar-layer"></span>-->
	</a>
	<a href="###" class="toolbar-item toolbar-item-feedback"></a>
	<a href="###" class="toolbar-item toolbar-item-app">
		<span class="toolbar-layer"></span>
	</a>
	<a href="javascript:scroll(0,0)" id="top" class="toolbar-item toolbar-item-top"></a>
</div>
<!--购物车fly插件-->


</body></html>