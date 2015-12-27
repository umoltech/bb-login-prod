<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="java.util.Date"%>

<%
  Date rightNow = new Date();
  Date migrationStart = new Date(115, 11, 28, 9, 0, 0);
  Date migrationEnd = new Date(115, 11, 28, 15, 0, 0);
  
  Boolean isMigration = false;
  
  if (rightNow.compareTo(migrationStart) > 0 && rightNow.compareTo(migrationEnd) < 0) {
    isMigration = true;
  }
%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="if (document.forms.login.user_id != undefined) document.forms.login.user_id.focus()" bodyClass="login-page">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
<style type="text/css">
	body.login-page { background: #E5E5E5 url('/bbcswebdav/library/login/dds/page-bg.gif') repeat scroll 0 0; margin-top: 0; }
	div.loginBody { width: 900px; padding: 0; background: #E5E5E5 url('/bbcswebdav/library/login/dds/header-bg.gif') repeat-x scroll 0 0; }
	div.loginBody div.headerTitle { font-size: 24px; font-weight: bold; line-height: 36px; padding-top: 10px; text-align: center; }
	div.loginBody div.headerSubTitle { font-size: 16px; line-height: 24px; text-align: center; margin-bottom: 50px; font-style: italic; }
	div.loginBody .receipt { width: 380px; }
	#loginBoxContainer { }
	#loginBoxContainer #loginBoxHeader { padding: 0 10px 10px 10px; margin: 0 20px 0 20px; color: #e46c0a; font-size: 16px; font-weight: bold; }
	#loginBoxContainer #loginBoxFooter { clear: both; padding: 10px 10px 0 10px; margin: 0 20px 0 20px; }
	#loginBlockColumnLeft { float: left; width: 390px; padding-left: 30px; padding-right: 29px; }
	#loginBlockColumnRight { float: right; width: 450px; padding-top: 30px; padding-bottom: 30px; background-color: #254061; text-align: center; }
	#loginBlockColumnRight #ddsUrl { padding-top: 20px; font-weight: bold; font-size: 24px; }
	#loginBlockColumnRight #ddsUrl a { color: #000000; }
	#loginBlockColumnRight #ddsUrl a:hover { color: #FFFF66; }
	.loginBlock { background-color: white; padding: 10px 20px 20px 20px; border: 1px solid #999999; margin-bottom: 20px; }
	.loginBlock h2 { padding: 0; font-size: 125%; }
	.loginBlock h3 { padding: 0; font-size: 110%; }
	.loginBlock p { margin-bottom: 10px; }
	.loginBlock ul { padding-left: 20px; list-style-type: circle; }
	#loginBox { width: 350px; margin-bottom: 30px; }
	#loginBox p { text-align: left; margin-bottom: 10px; }
	#loginBox ul { width: 375px; margin-left: 8px; }
	#loginBox li, #vistaFormFields li { padding-bottom: 5px; }
	#loginBox li label, #vistaFormFields li label { text-transform: none; }
	#loginBox input[type="text"], #loginBox input[type="password"] {}
	#loginBox li input[type="submit"] { margin-right: 25px; }
	.loginFormVista { margin-bottom: 30px; }
	.loginFormVista td { padding: 2px; }
	#vistaFormFields .button-1 { font-size: 130%; margin: 15px 0 0 230px; padding: 7px 22px 7px 22px; width: auto; }
	#loginAnnouncements { padding-top: 5px; }
	#loginAnnouncements ul { width: 830px; }
	#loginAnnouncements li { background: #FFFFCC url("/bbcswebdav/library/login/dds/announcements-bot.jpg") no-repeat center bottom; }
	.login-page #copyright { background-color: #E5E5E5; bottom: 0; margin-top: 0; position: relative; padding-bottom: 30px; }
</style>
</bbNG:cssBlock>

<div id="loginPageContainer">
  <div id="loginPane">
    <%-- Begin top rounder --%>
    <div class="topRound loginBack"><b class="outer"></b><b class="middle"></b><b class="inner"></b></div>
    <%-- End top rounder --%>

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <h1 class="hideoff">${productName}</h1>
        <img src="/bbcswebdav/library/login/dds/header-bg.gif" alt="${productName}" class="productLogo" />
        <loginUI:accessibility />
      </div>

      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>

      <div class="clearfix loginBody">        
        <div class="headerTitle">The Department of Developmental Services (DDS)</div>
        <div class="headerSubTitle">Online professional development programs for DDS staff and partners</div>
		
        <div id="loginBoxContainer">
          <div id="loginBoxHeader">
            Login
          </div>		  
          <div id="loginBlockColumnLeft">
            <loginUI:errorMessage />
            <div id="loginBox">
              <% if (isMigration) { %>
                <div class="migration">
                  <p><strong>Please Note</strong></p>
                  <p>This system is unavailable today due to a content migration.</p>
                </div>
              <% } else { %>
                <loginUI:loginForm />
              <% } %>
            </div>
          </div>
          <div id="loginBlockColumnRight">
            <div id="ddsLogo"><img src="/bbcswebdav/library/login/dds/dds-logo.jpg" /></div>
            <div id="ddsUrl"><a href="http://www.ddslearning.com" target="_blank">www.ddslearning.com</a></div>
          </div>
          <div id="loginBoxFooter">	
            <loginUI:systemAnnouncements maxItems="5" />			
          </div>
        </div>

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
  
  <bbNG:copyright />
</div>

<bbNG:jsBlock>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-793538-11', 'umassonline.net');
  ga('send', 'pageview');

</script>
</bbNG:jsBlock>
</bbNG:genericPage>