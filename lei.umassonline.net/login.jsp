<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.util.Random" %>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="N" globalNavigation="N" onLoad="loadLoginPage()" bodyClass="login-page">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
<style type="text/css">
	body.login-page { background: #FFFFFF url('/bbcswebdav/library/login/lei/header_bg.gif') top left repeat-x; }
	div.loginBody { 
		width: 800px; 
		padding: 25px 50px; 
		background: white url('/bbcswebdav/library/login/lei/middle_bg.png') top left no-repeat;  
		position: relative; 
		top: 64px;
		margin-left: auto;
		margin-right: auto;
	}
	#loginBoxContainer { }
	#loginBlockColumnLeft { float: left; width: 350px; margin-right: 50px; }
	#loginBlockColumnLeft p { margin-bottom: 20px; font-size: 11pt; line-height: 16pt; }
	#loginBox { 
		float: left; 
		width: 300px; 
		padding: 20px 40px 20px 40px; 
		border: 1px solid #C4C4C4;		
		-moz-box-shadow: 0 0 6px 0 #C4C4C4;
		-webkit-box-shadow: 0 0 6px 0 #C4C4C4;
		box-shadow: 0 0 6px 0 #C4C4C4;
	}
	#loginBox h3 { margin: 0 0 20px 0; font-size: 200%; color: #666666; }
	#loginBox p { text-align: left; margin-bottom: 10px; }
	#loginBox ul { width: 280px; }
	#loginBox li label { color: #06466A; text-transform: none; font-weight: bold; }
	#loginBox input[type="text"], #loginBox input[type="password"] { width: 280px; }
	#loginLogoSmall { margin-top: 30px; }
	.loginBlock a, #loginBox a { text-decoration: none; color: #06466A;  }
	.loginBlock a:hover, #loginBox a:hover { text-decoration: underline; }
	#loginAnnouncements li { background-color: #FFFFCC; }
  .login-page #copyright { bottom: 0; position: relative; }
	.login-page #copyright .logo { display: none; }
	a.pdf { background: url('/images/cs/fileicons/filetype_pdf_ia.png') 0 0 no-repeat; padding-left: 25px; padding-top: 5px; }
  .loginAlertTop { margin-bottom: 20px; background-color: #FFFFCC; padding: 18px 24px; }
  .loginAlertTop p { margin-bottom: 12px; }
</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
<script type="text/javascript">
  function loadLoginPage() {
    if (top != self) {
      top.location.replace(self.location.href);
    }
    if(document.forms.login.user_id != undefined) {
      document.forms.login.user_id.focus();
    }
    setTimeout("triggerScreenreaderAlert()", 500);
  }
  
  function triggerScreenreaderAlert() {
    if (document.getElementById('loginErrorMessage')) {
      $('loginErrorMessage').update( $('loginErrorMessage').innerHTML );
    }
  }
</script>
</bbNG:jsBlock>

<div id="loginPageContainer">
  <div id="loginPane">
    <%-- Begin top rounder --%>
    <div class="topRound loginBack"><b class="outer"></b><b class="middle"></b><b class="inner"></b></div>
    <%-- End top rounder --%>

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <loginUI:accessibility />
      </div>

      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>

      <div class="clearfix loginBody">      
        <loginUI:errorMessage />
        
        <div id="loginBoxContainer">
          <div id="loginBlockColumnLeft">
            <p style="text-align:center"><img src="/bbcswebdav/library/login/lei/logo.png" /></p>
            <p>Welcome to the home of the Lean Enterprise Institute courses on Blackboard Learn.
            Enter your username and password on the right to access your course materials
            and to interact with your instructor and other course participants.</p>
            <p>Helpful tips for first time users:</p>
            <p>Your USERNAME is the email address you used to register for your course. 
            Please log in with the email address where you received your registration confirmation.</p>
            <p>If you are using Blackboard for the FIRST TIME, you need to set your password.</p>
          </div>
          
          <div id="loginBox">
            <h3>Log in to your course</h3>
            
            <loginUI:loginForm forgotPasswordText="Click here to set or retrieve your password." />
            
            <div id="loginLogoSmall"><img src="/bbcswebdav/library/login/lei/bb-learn.jpg" /></div>			
          </div>
        </div>
		
        <loginUI:systemAnnouncements maxItems="5" />
  
        <bbNG:copyright />
		
        <div id="loginOptions">
          <loginUI:gatewayButtons />
        </div>
      </div>

      <loginUI:welcomeArea />      
    </div>

    <%-- Start Bottom Rounder --%>
    <div class="bottomRound loginBack"><b class="inner"></b><b class="middle"></b><b class="outer"></b></div>
    <%-- End Bottom Rounder --%>
  </div>
  
  
</div>

<bbNG:jsBlock>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-793538-10', 'umassonline.net');
  ga('send', 'pageview');

</script>
</bbNG:jsBlock>
</bbNG:genericPage>