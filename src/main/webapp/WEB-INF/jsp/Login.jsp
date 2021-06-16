<%@ page contentType="text/html;charset=utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="../../static/css/style.css" />
    <!--[if IE 6]>
    <script src="../static/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->    
    <script type="text/javascript" src="../../static/js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="../../static/js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="../../static/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../../static/js/menu.js"></script>
        
	<script type="text/javascript" src="../../static/js/select.js"></script>
    
	<script type="text/javascript" src="../../static/js/lrscroll.js"></script>
    
    <script type="text/javascript" src="../../static/js/iban.js"></script>
    <script type="text/javascript" src="../../static/js/fban.js"></script>
    <script type="text/javascript" src="../../static/js/f_ban.js"></script>
    <script type="text/javascript" src="../../static/js/mban.js"></script>
    <script type="text/javascript" src="../../static/js/bban.js"></script>
    <script type="text/javascript" src="../../static/js/hban.js"></script>
    <script type="text/javascript" src="../../static/js/tban.js"></script>
    
	<script type="text/javascript" src="../../static/js/lrscroll_1.js"></script>
    
    
<title>尤洪</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="/index/to?name=Login">登录</a> <a href="/index/to?name=Regist" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="../../static/images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="/index/to?name=Index"><img src="../../static/images/logo.png" /></a></div>
    </div>
	<div class="login">
    	<div class="log_img"><img src="../../static/images/l_img.png" width="611" height="425" /></div>
		<div class="log_c">
            <table border="0" style="width:370px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="55">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">登录</span>
                    <span class="fr">还没有商城账号，<a href="/index/to?name=Regist" style="color:#ff4e00;">立即注册</a></span>
                </td>
              </tr>
                <span id="msg" style="margin-left: 18%;color:red"></span>
              <tr height="70">
                  <td>用户名</td>
                  <td>
                      <input type="text" name="username" id="username" value="" class="l_user" />
                  </td>
              </tr>
              <tr height="70">
                  <td>密&nbsp; &nbsp; 码</td>
                  <td>
                      <input type="password" name="password" id="password" value="" class="l_pwd" />
                  </td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">请保存我这次的登录信息</label>
                    </span>
                    <span class="fr"><a href="#" style="color:#ff4e00;">忘记密码</a></span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                  <td><input type="button" id="login" class="log_btn" value="登录"></td>
              </tr>
            </table>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="../../static/images/b_1.gif" width="98" height="33" /><img src="../../static/images/b_2.gif" width="98" height="33" /><img src="../../static/images/b_3.gif" width="98" height="33" /><img src="../../static/images/b_4.gif" width="98" height="33" /><img src="../../static/images/b_5.gif" width="98" height="33" /><img src="../../static/images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--End Footer End -->    
<script type="text/javascript">
    //用户登录
    $(function(){
         $("#login").on("click",function (){
            var username = $("#username").val();
            var password = $("#password").val();
            if(!username){
                $("#msg").html("用户名不能为空！");
                $("#username").focus();
            }else {
                if(!password){
                    $("#msg").html("密码不能为空！");
                    $("#password").focus();
                }else {
                    $("#msg").html("");
                }
            }
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/user/login",
                data:{
                    username:username,
                    password:password
                },
                dataType:"JSON",
                success:function (data){
                    console.log("data:"+data);
                    if(data == 1){
                        var url ="${pageContext.request.contextPath}/index/to?name=Index";
                        location.href=url;
                    }else if(data == -1) {
                        alert("登录失败，请重新登录");
                        location.href=this.url;
                    }
                }
            })
            return false;
        })
    })
</script>
</body>
<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->

</html>
