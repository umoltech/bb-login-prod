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

<bbNG:jsBlock>
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script type="text/javascript">  
    var umolJQ = jQuery.noConflict();
    
    umolJQ(document).ready( function() {
    
      umolJQ('.forgot').remove();

    });
  </script>
</bbNG:jsBlock>  

<bbNG:cssBlock>
<style type="text/css">
	body.login-page { 
    background-color: #1F294C;
    background-image: none;
    min-height: 1500px;
  }
	div.loginBody { 
		width: 1000px; 
		padding: 266px 50px 25px 50px; 
		background-color: #fff; 
    background-image: url('/bbcswebdav/library/login/dhe/dhe-logo-wide.jpg');
    background-position: center 20px;
    background-repeat: no-repeat; 
    background-size: 630px 166px;
		position: relative; 
		top: 0;
		margin-left: auto;
		margin-right: auto;
    border: none;
	}
	#loginBoxContainer { }
	#loginBlockColumnLeft { float: left; width: 530px; margin-right: 50px; }
	#loginBlockColumnLeft p { margin-bottom: 20px; font-size: 11pt; line-height: 16pt; }
	#loginBox { 
		float: left; 
		width: 350px; 
		padding: 20px 30px 20px 30px; 
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
  #loginPageContainer #copyright { position: relative; margin-top: 40px; }
  .login-page #copyright { bottom: 0; position: relative; }
	.login-page #copyright .logo { display: none; }
	a.pdf { background: url('/images/cs/fileicons/filetype_pdf_ia.png') 0 0 no-repeat; padding-left: 25px; padding-top: 5px; }
  .loginAlertTop { margin-bottom: 20px; background-color: #FFFFCC; padding: 18px 24px; }
  .loginAlertTop p { margin-bottom: 12px; }

  .org-overlay { 
    position: absolute; 
    top: 0; 
    left: 0; 
    width: 90%; 
    padding: 0 5%; 
    color: #fff; 
    font-weight: bold;  
    background-color: rgba(0, 0, 0, 0.25);
  }

  .helpBlock {
    margin: 40px 0 40px 0;
    padding: 20px;
    background-color: #ffffdd;
  }

  .helpBlock p {
    margin: 0 0 20px 0;
  }

  h2 { 
    text-align: center; 
    font-size: 200%;
    margin: 0 0 20px 0;
  }

  @media only screen and (min-width: 800px) and (max-width: 999px) {
    div.loginBody {
      width: 100%;
      border: none;
    }

    #loginBox {
      width: 30%;
    }

    #loginBlockColumnLeft {
      width: 50%;
      margin-right: 5%;
    }
  }

  @media only screen and (max-width: 799px) {
    div.loginBody {
      width: 90%;
      border: none;
      padding: 30% 5% 10% 5%; 
      background-size: 80% auto;
    }do you 

    #loginBox {
      float: none;
      width: 100%;
      padding-left: 0;
      padding-right: 0;
    }

    #loginBlockColumnLeft {
      float: none;
      width: 100%;
    }

    #loginPageContainer #copyright {
      max-width: 90%;
      margin-left: auto;
      margin-right: auto;
      left: unset;
    }
  }

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
      <div class="clearfix loginBody">      
        <loginUI:errorMessage />
        
        <div id="loginBoxContainer">
          <div id="loginBlockColumnLeft">
            <p>Enter your username and password to access your course materials
            and to interact with your instructor and other course participants.</p>
            <p>Helpful tips for first time users:</p>
            <p>Your USERNAME is the email address you used to register for your course. 
            Please log in with the email address where you received your registration confirmation.</p>
            <div class="helpBlock">
              <p><strong>Need Help?</strong></p>
              <p>For support please e-mail: 
                <a href="mailto:TrusteeTraining@dhe.mass.edu">TrusteeTraining@dhe.mass.edu</a></p>
            </div>
          </div>
          
          <div id="loginBox">
            <h3>Log in to your course</h3>
            
            <loginUI:loginForm />
            
            <div id="loginLogoSmall"><img src="/bbcswebdav/library/login/dese/bb-learn.jpg" /></div>			
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
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-793538-23"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-793538-23');
</script>

</bbNG:jsBlock>
</bbNG:genericPage>