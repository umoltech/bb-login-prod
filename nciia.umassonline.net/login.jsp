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
  Date migrationEnd = new Date(115, 11, 28, 23, 0, 0);
  
  Boolean isMigration = false;
  
  if (rightNow.compareTo(migrationStart) > 0 && rightNow.compareTo(migrationEnd) < 0) {
    isMigration = true;
  }
%>

<bbNG:genericPage authentication="N" wrapper="N" globalNavigation="N" onLoad="loadLoginPage()" bodyClass="login-page">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
   
<bbNG:cssBlock>
<style type="text/css">
  div.loginBody { width: 850px; padding: 20px; background: #FFFFFF url(''); border-left: 1px solid #BBBBBB; border-right: 1px solid #BBBBBB; }
  div.loginBody .loginBodyLogo { margin: 0 0 15px 0; text-align: center; }
  div.loginBody .loginBodySponsors { margin: 0 0 25px 0; text-align: center; }
  
  #loginBoxContainer { }
  #loginBlockColumnLeft { float: left; width: 435px; margin: 0 20px 25px 0; }
  #loginBlockColumnLeft p { margin-bottom: 40px; font-size: 11pt; line-height: 16pt; }
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
  #loginBox li label { color: #000000; font-weight: bold; }
  #loginBox input[type="text"], #loginBox input[type="password"] { width: 280px; }
  #loginBox #techSupportEmail { margin: 20px 0 10px 0; font-weight: bold; font-size: 110%; }
  #loginLogoSmall { margin-top: 30px; }
  .loginBlock a, #loginBox a { text-decoration: none; color: #06466A;  }
  .loginBlock a:hover, #loginBox a:hover { text-decoration: underline; }
  
  #loginAnnouncements { padding-top: 5px; margin: 20px 0 30px 0; }
  #loginAnnouncements ul { width: 830px; }
  #loginAnnouncements li { background-color: #FFFFCC; background-image: url('/bbcswebdav/library/login/nciia/announcements-bot.jpg'); background-position: center bottom; background-repeat: no-repeat;  }
  
  .login-page #copyright { margin-top: 0; position: relative; }
</style>
</bbNG:cssBlock>

<div id="loginPageContainer">
  <div id="loginPane">
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
            <div class="loginBodyLogo"><img src="/bbcswebdav/library/login/nciia/header.jpg" /></div>
            <div class="loginBodySponsors"><img src="/bbcswebdav/library/login/nciia/sponsors.jpg" /></div>
          </div>
        
          <div id="loginBox">         
            <% if (isMigration) { %>
              <div class="migration">
                <p><strong>Please Note</strong></p>
                <p>This system is unavailable today due to a content migration.</p>
              </div>
            <% } else { %>
              <loginUI:loginForm />
            <% } %>
            <div id="techSupportEmail"><a href="mailto:techsupport@donahue.umassp.edu">techsupport@donahue.umassp.edu</a></div>      
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
  </div>
</div>

<bbNG:jsBlock>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-793538-12', 'umassonline.net');
  ga('send', 'pageview');

</script>
</bbNG:jsBlock>
</bbNG:genericPage>
