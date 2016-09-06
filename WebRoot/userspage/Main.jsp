<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>欢迎光临[聚票网]</title>
<meta name="keywords" content="商城,聚票,电影,演唱会,体育赛事" />
<meta name="description" content="流行票务专卖，各种演唱会、体育赛事、电影等票。" />
<link href="style/basic1.css" rel="stylesheet" type="text/css" />
<link href="style/link.css" rel="stylesheet" type="text/css" media="screen" />
<link href="style/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="box">
  <div id="logo">
	<object data="media/logo.swf" type="application/x-shockwave-flash" width="766" height="148">
      <param name="movie" value="media/logo.swf" />
      <param name="SCALE" value="exactfit" />
      <param name="quality" value="high" />
	  <param name="wmode" value="transparent" />
    </object>
  </div><!-- #logo -->
  <div id="nav">
  <ul>
    <li>
						<a href="../ticketspage/index.jsp"><span>引页</span> </a>
					</li>
					<li>
						<a href="../userspage/userlogin.jsp"><span>首页</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchtickets.jsp"><span>购票</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchusedtickets.jsp"><span>二手票</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>注册</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>用户中心</span> </a>
					</li>
					<li>
						<a href="#"><span>品牌专卖</span> </a>
					</li>
					<li>
						<a href="#"><span>致谢</span> </a>
					</li>
					<li>
						<a href="#"><span class="last">优惠券</span> </a>
					</li>
  </ul>
  </div><!-- #nav -->
  <div id="link">
    <div id="login">
      <form id="f_login" name="f_login" method="post" action="userLogin.action">
	    <fieldset>
		  <legend>用户登陆</legend>
		  <label for="f_login_name">用户名：</label>
		  <input type="text" name="username" tabindex="1" id="f_login_name" />
	      <label for="f_login_pass">密　码：</label>
	      <input type="password" name="password" tabindex="2" id="f_login_pass" />
	      <input name="f_login_ok" type="submit" class="btn" id="f_login_ok" tabindex="3" value="确定" />
	      <input name="f_login_reset" type="reset" class="btn" id="f_login_reset" tabindex="4" value="重填" />
	    </fieldset>
		<ul>
          <li><a href="#">免费注册</a></li>
          <li><a href="#">忘记密码</a></li>
        </ul>
      </form>
    </div><!-- #login -->
    <div id="sort">
      按票品用途分类
      <ul>
        <li><a href="#">演唱会</a></li>
        <li><a href="#">体育赛事</a></li>
        <li><a href="#">专场电影</a></li>
        <li><a href="#">音乐会</a></li>
        <li><a href="#">话剧歌剧</a></li>
        <li><a href="#">休闲度假</a></li>
        <li><a href="#">曲艺杂谈</a></li>
        <li><a href="#">儿童亲子</a></li>
        <li><a href="#">其他</a></li>
      </ul>
      按来源城市分类
      <ul>
        <li><a href="#">上海 shanghai</a></li>
        <li><a href="#">北京 beijing</a></li>
        <li><a href="#">西安xi'an</a></li>
        <li><a href="#">成都 chengdu</a></li>
        <li><a href="#">重庆 chongqing</a></li>
        <li><a href="#">太原 taiyuan</a></li>
        <li><a href="#">南京nanjing</a></li>
        <li><a href="#">宁夏 Ningxia</a></li>
        <li><a href="#">天津 Tianjing</a></li>
        <li><a href="#">长春 Changchun </a></li>
        <li><a href="#">其他 Other</a></li>
      </ul>
    </div><!-- #sort -->
    <div id="ad_2">
      <ul>
        <li><img src="photo/ad_2_temp1.gif" title="广告位招租" alt="广告" width="150" height="50" /></li>
        <li><img src="photo/ad_2_temp1.gif" title="广告位招租" alt="广告" width="150" height="50" /></li>
      </ul>
    </div>
    <!-- #ad_2 -->
  </div><!-- #link --> 
  <div id="main">
    <div id="ad_1">
      <ul>
        <li><a href="#"><img src="photo/ad_1_temp1.jpg" title="点击欣赏" alt="主广告1" width="293" height="175" border="0" /></a></li><li><a href="#"><img src="photo/ad_1_temp2.jpg" title="点击欣赏]" alt="主广告2" width="293" height="175" border="0" /></a></li>
      </ul>
    </div>
    <!-- #ad_1 -->
    <div id="recommend">
      <h1>本周推荐</h1>
      <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/yinyuejie.jpg" alt="商品图片"   width="139" height="187" /></dt>
		    <dd class="title recom_title recom">陈奕迅演唱会</dd>
		    <dd class="memo recom">Eason拥有的大热金曲更不下数十首，他的歌有一种魔力，无论妙趣横生、或深情款款、或耐人寻味，总是让人深陷其中，不能自已</dd>
		    <dd class="price recom">原　价：￥800元</dd>
		    <dd class="net_price recom"> 折扣价：￥700元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/106853.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/simple.jpg" alt="商品图片"  width="139" height="187" /></dt>
		    <dd class="title recom_title recom"> 简单计划演唱会 </dd>
		    <dd class="memo recom"> 代表了一代人声音的Simple Plan简单计划乐队即将携他们的“Taking One for the Team”世界巡演来到东南亚！

			</dd>
		    <dd class="price recom">原　价：￥128元</dd>
		    <dd class="net_price recom">折扣价：￥108元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/105404.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/hunningcao.jpg" alt="商品图片"  width="139" height="187" /></dt>
		    <dd class="title recom_title recom">混凝草音乐节 </dd>
		    <dd class="memo recom">2016年9月16、17日（中秋假期），Concrete & Grass混凝草音乐节（原回声公园音乐节）将在上海瑞可碧橄榄球俱乐部开阔的绿地上拉开帷幕。
</dd>
		    <dd class="price recom">原　价：￥1000元</dd>
		    <dd class="net_price recom"> 折扣价：￥700元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/106550.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/zhujiajian.jpg" alt="商品图片"  width="139" height="187" /></dt>
		    <dd class="title recom_title recom">朱家尖东海音乐节  </dd>
		    <dd class="memo recom"> 011年，东海音乐节诞生于浙江舟山普陀，中国国际沙雕节现场。
　　开启了浙江首个将海洋生态与青年文化良性结合的的大型文化节庆品牌。

			</dd>
		    <dd class="price recom">原　价：￥188元</dd>
		    <dd class="net_price recom">折扣价：￥108元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/106669.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/haigui.jpg" alt="商品图片"  width="139" height="187" /></dt>
		    <dd class="title recom_title recom">海龟先生演唱会</dd>
		    <dd class="memo recom">海龟先生乐队成立于2004年12月。2005年11月发行第一张EP《POGO不如跳舞》，融合了ska、punk、grunge的音乐风格以及轻松、欢快、真实的现场感染力广受好评。</dd>
		    <dd class="price recom">原　价：￥800元</dd>
		    <dd class="net_price recom"> 折扣价：￥750元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/107568.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/haizeiwang.jpg"  width="139" height="187" alt="商品图片" /></dt>
		    <dd class="title recom_title recom"> 航海王视听音乐会</dd>
		    <dd class="memo recom">《航海王》-世界上最有名的日本动漫系列。航海王音乐会以精彩的动画视频配上交响乐，现正在世界各地巡回演出(香港、法国、英国、等...)

			</dd>
		    <dd class="price recom">原　价：￥650元</dd>
		    <dd class="net_price recom">折扣价：￥508元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://item.damai.cn/106508.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
    </div>
  </div><!-- #main -->
  <div id="footer">聚票网 www.ployticket.edu.cn</div><!-- #footer -->  
</div>
</body>
</html>
