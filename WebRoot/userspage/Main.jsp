<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags"%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ӭ����[��Ʊ��]</title>
<meta name="keywords" content="�̳�,��Ʊ,��Ӱ,�ݳ���,��������" />
<meta name="description" content="����Ʊ��ר���������ݳ��ᡢ�������¡���Ӱ��Ʊ��" />
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
						<a href="../ticketspage/index.jsp"><span>��ҳ</span> </a>
					</li>
					<li>
						<a href="../userspage/userlogin.jsp"><span>��ҳ</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchtickets.jsp"><span>��Ʊ</span> </a>
					</li>
					<li>
						<a href="../ticketspage/searchusedtickets.jsp"><span>����Ʊ</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>ע��</span> </a>
					</li>
					<li>
						<a href="../userspage/adduser.jsp"><span>�û�����</span> </a>
					</li>
					<li>
						<a href="#"><span>Ʒ��ר��</span> </a>
					</li>
					<li>
						<a href="#"><span>��л</span> </a>
					</li>
					<li>
						<a href="#"><span class="last">�Ż�ȯ</span> </a>
					</li>
  </ul>
  </div><!-- #nav -->
  <div id="link">
    <div id="login">
      <form id="f_login" name="f_login" method="post" action="userLogin.action">
	    <fieldset>
		  <legend>�û���½</legend>
		  <label for="f_login_name">�û�����</label>
		  <input type="text" name="username" tabindex="1" id="f_login_name" />
	      <label for="f_login_pass">�ܡ��룺</label>
	      <input type="password" name="password" tabindex="2" id="f_login_pass" />
	      <input name="f_login_ok" type="submit" class="btn" id="f_login_ok" tabindex="3" value="ȷ��" />
	      <input name="f_login_reset" type="reset" class="btn" id="f_login_reset" tabindex="4" value="����" />
	    </fieldset>
		<ul>
          <li><a href="#">���ע��</a></li>
          <li><a href="#">��������</a></li>
        </ul>
      </form>
    </div><!-- #login -->
    <div id="sort">
      ��ƱƷ��;����
      <ul>
        <li><a href="#">�ݳ���</a></li>
        <li><a href="#">��������</a></li>
        <li><a href="#">ר����Ӱ</a></li>
        <li><a href="#">���ֻ�</a></li>
        <li><a href="#">������</a></li>
        <li><a href="#">���жȼ�</a></li>
        <li><a href="#">������̸</a></li>
        <li><a href="#">��ͯ����</a></li>
        <li><a href="#">����</a></li>
      </ul>
      ����Դ���з���
      <ul>
        <li><a href="#">�Ϻ� shanghai</a></li>
        <li><a href="#">���� beijing</a></li>
        <li><a href="#">����xi'an</a></li>
        <li><a href="#">�ɶ� chengdu</a></li>
        <li><a href="#">���� chongqing</a></li>
        <li><a href="#">̫ԭ taiyuan</a></li>
        <li><a href="#">�Ͼ�nanjing</a></li>
        <li><a href="#">���� Ningxia</a></li>
        <li><a href="#">��� Tianjing</a></li>
        <li><a href="#">���� Changchun </a></li>
        <li><a href="#">���� Other</a></li>
      </ul>
    </div><!-- #sort -->
    <div id="ad_2">
      <ul>
        <li><img src="photo/ad_2_temp1.gif" title="���λ����" alt="���" width="150" height="50" /></li>
        <li><img src="photo/ad_2_temp1.gif" title="���λ����" alt="���" width="150" height="50" /></li>
      </ul>
    </div>
    <!-- #ad_2 -->
  </div><!-- #link --> 
  <div id="main">
    <div id="ad_1">
      <ul>
        <li><a href="#"><img src="photo/ad_1_temp1.jpg" title="�������" alt="�����1" width="293" height="175" border="0" /></a></li><li><a href="#"><img src="photo/ad_1_temp2.jpg" title="�������]" alt="�����2" width="293" height="175" border="0" /></a></li>
      </ul>
    </div>
    <!-- #ad_1 -->
    <div id="recommend">
      <h1>�����Ƽ�</h1>
      <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_01.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom">�������ݳ���</dd>
		    <dd class="memo recom">�ֽ�Ů��-������󡪡�JOLIN�����֣������ݳ���,�������ڴ�����һ��.
			<br/>&nbsp&nbsp�ø����������֣��ø��������貽��������ʵ���Լ���</dd>
		    <dd class="price recom">ԭ���ۣ���800Ԫ</dd>
		    <dd class="net_price recom"> �ۿۼۣ���700Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://i.damai.cn/2012cyl" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_02.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom"> NBA������ </dd>
		    <dd class="memo recom"> ����ɭ�����ﶼ��NBA�����ϵı���Ӣ�ۣ���Ӣ�ۣ��ػ�������ϧ��������λ��Ӣ��������ɵ�����������ʱ���ؽ��˴˻������õ�����һ�μ������£�

			</dd>
		    <dd class="price recom">ԭ���ۣ���128Ԫ</dd>
		    <dd class="net_price recom">�ۿۼۣ���108Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39996.html" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_03.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom">�������ݳ���</dd>
		    <dd class="memo recom">�ӡ��ֽǵ�ף��������ԭ���Ҿ���������Ů����Ϊ��������ͷ��ҰǾޱ��ѧ���������е�˼���赸���������ŵ����������Ǵ����ݳ���ʮ�������ʮ�꾭�䡣
</dd>
		    <dd class="price recom">ԭ���ۣ���1000Ԫ</dd>
		    <dd class="net_price recom"> �ۿۼۣ���700Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_40706.html" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_04.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom"> �껨�������� </dd>
		    <dd class="memo recom"> ������Ԯ��Ѫ���껨������������ʼ����������ĥ�ϵ����⣬��ŷ�޵ļ��������������оͿ��Կ�������Ա֮���ڼ���Ѱ��Ĭ����

			</dd>
		    <dd class="price recom">ԭ���ۣ���188Ԫ</dd>
		    <dd class="net_price recom">�ۿۼۣ���108Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_34809.html" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
	  <ol>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_05.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom">�����ݳ���</dd>
		    <dd class="memo recom">2012��������������Ѳ���ݳ��ᣬ����������ͬ������������Ϊ��ҹ֮�⣬����������ǰ��ҹ�����һ˲�䣬Ҳ���������ڼ�ҹ��һ˲��</dd>
		    <dd class="price recom">ԭ���ۣ���800Ԫ</dd>
		    <dd class="net_price recom"> �ۿۼۣ���750Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39846.html" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	    <li>
		  <dl>
  	        <dt><img src="photo/recom_06.jpg" alt="��ƷͼƬ" /></dt>
		    <dd class="title recom_title recom"> ����ݳ��� </dd>
		    <dd class="memo recom">������8��������Ļ�ġ�����������Ѳ�ݣ������������ǵĿ񻶣�ͬ��Ҳ���ø����˽�����������̨�ʺ��ֳ������Ļ��ᡣ

			</dd>
		    <dd class="price recom">ԭ���ۣ���650Ԫ</dd>
		    <dd class="net_price recom">�ۿۼۣ���508Ԫ</dd>
		    <dd class="select">
			  <ul>
			    <li class="btn buy"><a href="http://www.damai.cn/ticket_39128.html" title="����������Ʒ">����</a></li>
				<li class="btn favorite"><a href="#" title="�������Ʒ�����ղؼ�">�ղ�</a></li>
			  </ul>
			</dd>
		  </dl>
	    </li>
	  </ol>
    </div>
  </div><!-- #main -->
  <div id="footer">��Ʊ�� www.ployticket.edu.cn</div><!-- #footer -->  
</div>
</body>
</html>
