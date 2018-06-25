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

<bbNG:genericPage authentication="N" wrapper="N" globalNavigation="N" onLoad="loadLoginPage()" bodyClass="login-page-body">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
	   
  <bbNG:jsBlock>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
      jQuery().ready( function() {	
        jQuery.noConflict();

        jQuery('.forgot').html('Need Help?  Contact <a href="mailto:techsupport@donahue.umassp.edu">techsupport@donahue.umassp.edu</a>');
      });
    </script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-793538-15', 'umassonline.net');
      ga('send', 'pageview');
    </script>
  </bbNG:jsBlock>

<bbNG:cssBlock>
  <style type="text/css">
    body, body.login-page-body { 
      background-color: #ffffff;
      background-image: none;
      margin: 0;
    }
    
    #loginContainer div.loginBody {
      background-color: #ffffff;
      background-image: none;
      background-repeat: no-repeat;
      background-position: center top;
      padding: 0;
      width: 1000px;
    }
          
    #loginContainer div.loginBody .receipt {
      margin: 0;
      padding: 12px 0;
      width: 998px;
      text-align: center;
    }
          
    #loginContainer div.loginBody div.loginBodyHeader {
      width: 1000px;
      height: 160px;
    }
          
    #loginContainer div.loginBody div.loginBodyHeader div.loginBodyHeaderText {
      width: 500px;
      height: 110px;
      padding: 50px 100px 0 100px;
      float: left;
      font-family: "Calibri", verdana, arial;
      font-size: 24px;
      font-style: italic;
      font-weight: bold;
      color: #666666;
      text-align: center;
    }
    
    #loginContainer div.loginBody div.loginBodyHeader div.loginBodyHeaderLogo {
      width: 300px;
      height: 120px;
      padding-top: 40px;
      float: right;
      text-align: center;
    }
    
    #loginContainer div.loginBody div.loginBodyBackground {
      width: 1000px;
      height: 125px;
      background: transparent url('/bbcswebdav/library/login/umdi/bg-campus.jpg') no-repeat top center;
    }
    
    #loginBodyContainer {
      width: 1000px;
      height: 280px;
      padding: 0;
      border-top: 3px solid #c4cfdc;
      border-bottom: 3px solid #c4cfdc;
    }
    
    #loginBodyContainer #loginBox {
      width: 400px;
      height: 250px;
      padding: 30px 0 0 0;        
      float: left;
    }
    
    #loginBodyContainer #loginBox ul {
      width: 320px;
    }
    
    #loginBodyContainer #loginBox input[type="text"], 
    #loginBodyContainer #loginBox input[type="password"] {
      border-color: #385d8a;
      background-color: #4f81bd;
      color: #ffffff;
    }
    
    #loginBodyContainer #loginBox li label {
      text-transform: none;
    }
    
    #loginBox li .forgot {
      display: block;
      width: 200px;
      float: left;
      font-weight: bold;
      color: #1f497d;
    }
    
    #loginBox .forgot a {
      color: #1f497d;
      border: 0;
    }
    
    #loginBodyContainer #loginDescription {
      width: 550px;
      height: 230px;
      padding: 50px 0 0 47px;
      border-left: 3px solid #c4cfdc;
      float: right;
      text-align: center;
      font-family: "Calibri", verdana, arial;
      font-size: 30px;
      font-weight: bold;
      color: #666666;
    }
    
    #loginBodyContainer #loginDescription p {
      margin-top: 30px;
    }
    
    #loginBodyContainer #loginLogo a {
      color: #FFF;
      text-decoration: none;
      font-size: 14pt;
    }
          
    #loginAnnouncements ul {
      width: 600px;
    }
          
    #loginAnnouncements li {
      background-color: #ffffcc;
    }
          
    #loginOptions {
      margin: 0;
    }
    
    #copyright {
      margin-top: 20px;
      display: inline;
      position: relative;
      text-align: center;
    }
    
    #copyright .logo {
      position: relative;
    }
  </style>
</bbNG:cssBlock>


<div id="loginPageContainer">
  <div id="loginPane">
    <div id="loginContainer">
      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>
      <div class="clearfix loginBody">
        <div class="loginBodyHeader">
          <div class="loginBodyHeaderText">Innovative Learning Solutions for organizational and professional excellence</div>
          <div class="loginBodyHeaderLogo"><img src="/bbcswebdav/library/login/umdi/umdi-logo.gif" alt="UMass Donahue Institute Logo" /></div>
        </div>
        <div class="loginBodyBackground clearfix"></div>
        <loginUI:errorMessage />
        
        <div id="loginBodyContainer">
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
          <div id="loginDescription">
            <p>Welcome to the UMass Donahue Institute's Organizational Development &amp; Learning Solutions online learning center.</p>
          </div>
        </div>
        
        <div id="loginOptions">
          <loginUI:gatewayButtons />
        </div>
      </div>

      <loginUI:welcomeArea />
    </div>
  </div>
  <loginUI:systemAnnouncements maxItems="5" />
  <bbNG:copyright />
</div>

</bbNG:genericPage>
