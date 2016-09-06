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
        <li><a href="#">南京 nanjing</a></li>
        <li><a href="#">成都 chengdu</a></li>
        <li><a href="#">重庆 chongqing</a></li>
        <li><a href="#">太原 taiyuan</a></li>
        <li><a href="#">西安 xian</a></li>
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
  	        <dt><img src="photo/recom_01.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom">蔡依林演唱会</dd>
		    <dd class="memo recom">乐界女王-亚洲舞后——JOLIN蔡依林，生日演唱会,蔡依林期待和你一起.
			<br/>&nbsp&nbsp用更好听的音乐，用更炫丽的舞步，做最真实的自己！</dd>
		    <dd class="price recom">原　价：￥800元</dd>
		    <dd class="net_price recom"> 折扣价：￥700元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://i.damai.cn/2012cyl" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_02.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom"> NBA传奇赛 </dd>
		    <dd class="memo recom"> 艾弗森和马布里都是NBA赛场上的悲情英雄，是英雄，必会惺惺相惜。当这两位老英雄在五棵松的赛场上相遇时，必将彼此互不相让地奏响一段激情乐章！

			</dd>
		    <dd class="price recom">原　价：￥128元</dd>
		    <dd class="net_price recom">折扣价：￥108元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39996.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_03.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom">戴佩妮演唱会</dd>
		    <dd class="memo recom">从《街角的祝福》到《原谅我就是这样的女生》为爱永不低头的野蔷薇文学繁衍她敏感的思绪舞蹈启蒙她奔放的情绪她就是戴佩妮出道十年的佩妮十年经典。
</dd>
		    <dd class="price recom">原　价：￥1000元</dd>
		    <dd class="net_price recom"> 折扣价：￥700元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_40706.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_04.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom"> 申花足球赛赛 </dd>
		    <dd class="memo recom"> 经历外援大换血的申花，在新赛季伊始面临着整体磨合的问题，从欧洲的几场拉练热身赛中就可以看出，队员之间在极力寻找默契！

			</dd>
		    <dd class="price recom">原　价：￥188元</dd>
		    <dd class="net_price recom">折扣价：￥108元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_34809.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_05.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom">韩庚演唱会</dd>
		    <dd class="memo recom">2012寒更·庚心世界巡回演唱会，“寒更”音同“韩庚”，意为极夜之光，是黎明来临前黑夜的最后一瞬间，也是曙光初启于极夜的一瞬间</dd>
		    <dd class="price recom">原　价：￥800元</dd>
		    <dd class="net_price recom"> 折扣价：￥750元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39846.html" title="点击购买此商品">购买</a></li>
				<li class="btn favorite"><a href="#" title="点击将商品加入收藏夹">收藏</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_06.jpg" alt="商品图片" /></dt>
		    <dd class="title recom_title recom"> 李宇春演唱会 </dd>
		    <dd class="memo recom">即将于8月拉开序幕的“李宇春疯狂世界巡演，不仅是玉米们的狂欢，同样也是让更多人近距离领略舞台皇后现场魅力的机会。

			</dd>
		    <dd class="price recom">原　价：￥650元</dd>
		    <dd class="net_price recom">折扣价：￥508元</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39128.html" title="点击购买此商品">购买</a></li>
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
