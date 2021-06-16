<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        	<span class="fl">你好，请<a href="/index/to?name=Login">登录</a>&nbsp; <a href="/index/to?name=Regist" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
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
	<div class="regist">
    	<div class="log_img"><img src="../../static/images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
<%--        	<form action="${pageContext.request.contextPath}/user/register" method="post">--%>
                <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
                  <tr height="50" valign="top">
                    <td width="95">&nbsp;</td>
                    <td>
                        <span class="fl" style="font-size:24px;">注册</span>
                        <span class="fr">已有商城账号，<a href="Login.jsp" style="color:#ff4e00;">我要登录</a></span>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                    <td><input type="text" name="username" id="username" value="" class="l_user" /></td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                    <td><input type="password" name="password" id="password" value="" class="l_pwd" /></td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                    <td><input type="password" value="" class="l_pwd" id="twopassword" /></td>
                  </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;姓名 &nbsp;</td>
                        <td><input type="text" name="name" id="name" value="" class="l_user" /></td>
                    </tr>
                  <tr height="50">
                     <td align="right"><font color="#ff4e00">*</font>&nbsp;证件类型 &nbsp;</td>
                     <td><input type="text" name="type" id="type" value="身份证" class="l_type" /></td>
                  </tr>
                    <tr height="50">
                        <td align="right"><font color="#ff4e00">*</font>&nbsp;证件号码 &nbsp;</td>
                        <td><input type="text" name="idNumber" id="idNumber" value="" class="l_idNumber" /></td>
                    </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                    <td><input type="text" name="email" id="email" value="" class="l_email" /></td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                    <td><input type="text" name="telephone" id="telephone" value="" class="l_tel" /></td>
                  </tr>
                  <tr height="50">
                    <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                    <td>
                        <input type="text" value="" class="l_ipt" name="verifyInput" />
                        <img class="verifyCode" onclick="changeCode()" src="../signcode/signcode/get.do" id="img_src" />
                    </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td style="font-size:12px; padding-top:20px;">
                        <span style="font-family:'宋体';" class="fl">
                            <label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                        </span>
                    </td>
                  </tr>
                  <tr height="60">
                    <td>&nbsp;</td>
                      <td><input type="button" id="regiest" class="log_btn" readonly="readonly" value="立即注册"></td>
                  </tr>
                </table>
<%--            </form>--%>
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

</body>
<script>
    $(function(){
        $("#regiest").on("click",function (){
            var word1 = document.getElementById("password").value;
            var word2 = document.getElementById("twopassword").value;
            if (word1 != word2){
                window.alert("两次密码不一致！请重新输入");
                twopassword.focus();
            }
            var username = $("#username").val();
            var password = $("#password").val();
            var name = $("#name").val();
            var type = $("#type").val();
            var idNumber = $("#idNumber").val();
            var email = $("#email").val();
            var telephone = $("#telephone").val();
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
                url:"${pageContext.request.contextPath}/user/register",
                async:false,
                data:{
                    username:username,
                    password:password,
                    name:name,
                    type:type,
                    idNumber:idNumber,
                    email:email,
                    telephone:telephone
                },
                dataType:"JSON",
                success:function(data){
                    if (data == 1){
                        window.alert("注册成功");
                        window.setTimeout("setTimeout_href()",1000);
                    //    location.href="${pageContext.request.contextPath}/index/to?name=Index";
                    }else if(data == -1 || data == 0){
                        window.alert("注册失败");
                        location.href=this.url;
                    }else if(data == -2){
                        window.alert("用户名已存在，请重新输入");
                    }
                }
            })
             return false;
        })
    })

    function setTimeout_href(){
        self.location.href="${pageContext.request.contextPath}/index/to?name=Index";
    }

    /*点击刷新验证码*/
    function changeCode(){
        document.getElementById("img_src").src="../signcode/signcode/get.do?r="+new Data().getTime;
    }

</script>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
