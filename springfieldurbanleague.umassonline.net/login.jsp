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

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page-body">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
     
  <bbNG:jsBlock>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
      jQuery().ready( function() {  
        jQuery.noConflict();
        
        jQuery('.forgot').html('Forgot your password? Email <a href="mailto:techsupport@donahue.umassp.edu">techsupport@donahue.umassp.edu</a> for help');
      });
    </script>
  </bbNG:jsBlock>

  <bbNG:cssBlock>
    <style type="text/css">
      body, body.login-page-body { 
        background-color: #ffffff;
        background-image: none;
        margin: 20px 0;
      }
      
      #loginContainer div.loginBody {
        background-color: #ffffff;
        background-image: url('/bbcswebdav/library/login/uls/header.gif');
        background-repeat: no-repeat;
        background-position: center top;
        padding: 150px 0 0 0;
        width: 950px;
      }
      
      #loginContainer div.loginBody .receipt {
        margin: 0;
        padding: 10px 30px;
        width: 888px;
      }
      
      #loginBodyContainer {
        width: 950px;
        height: 280px;
        padding: 0;
      }
      
      #loginBodyContainer #loginBox {
        width: 400px;
        height: 234px;
        padding: 20px 0;        
        border-top: 3px solid #dfe5ec;
        border-bottom: 3px solid #dfe5ec;
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
      }
      
      #loginBox .forgot a {
        color: #254061;
        /*
        font-weight: bold;
        font-size: 120%;
        */
        border: 0;
      }
      
      #loginBodyContainer #loginLogo {
        width: 550px;
        height: 240px;
        padding: 20px 0;
        background-color: #254061;
        float: right;
        text-align: center;
      }
      
      #loginBodyContainer #loginLogo p {
        margin-top: 30px;
      }
      
      #loginBodyContainer #loginLogo a {
        color: #FFF;
        text-decoration: none;
        font-size: 14pt;
      }
      
      #loginAnnouncements li {
        background-color: #ffffcc;
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
            <div id="loginLogo">
              <img src="/bbcswebdav/library/login/uls/be-the-stem-program.gif" alt="Be the S.T.E.M. Program" />
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