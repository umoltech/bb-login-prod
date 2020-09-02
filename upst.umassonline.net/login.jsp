<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<bbNG:genericPage authentication="N" wrapper="false" bodyClass="login-page" globalNavigation="false" allowScale="true">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
   
<bbNG:jsBlock>
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script type="text/javascript">  
    var umolJQ = jQuery.noConflict();
    
    umolJQ(document).ready( function() {
    
      var ssoLoginUrl = umolJQ('#loginRedirectProviderList').children('li:first-child').children('a:first-child').attr('href');
      
      umolJQ('#login-submit').attr('href', ssoLoginUrl);

      umolJQ('#redirectProvidersDropdownButton').remove();
      umolJQ('#loginRedirectProviderList').remove();
      
      umolJQ('#internalLoginToggle').click( function() {
        umolJQ(this).hide();
        umolJQ('#internalLoginForm').show(500);      
      });
      
    });
  </script>
</bbNG:jsBlock>

<bbNG:cssBlock>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"> 

  <style type="text/css">
    body { 
      background-color: #fff;
      background-image: none;
      min-width: 100%;
      font-family: Open Sans,sans-serif;
      margin: 0;
      padding: 0;
    }

    #main {
      width: 100%;
    }

    #header {
      width: 1000px;
      margin: 40px auto;
      text-align: center;
    }

    #header img {
      width: 500px;
    }

    #hero {
      height: 400px;
      width: 1000px;
      overflow: hidden;
      margin: 0 auto;
      text-align: center;
      border-top: 4px solid #9d2235;
      border-bottom: 4px solid #9d2235;
    }

    #hero img {
      width: 100%;
      height: auto;
    }

    .body {
      text-align: center;
      font-size: 14px;
    }

    #loginBoxContainer {
      width: 1000px;
      margin: 40px auto;
      text-align: center;
    }

    #loginBoxContainer p {
      margin-bottom: 40px;
    }

    #loginErrorMessage {
      width: 800px;
      max-width: 100%;
      margin: 40px auto;
    }

    div.login-button {
      text-align: center;
    }

    a#login-submit {
      display: inline-block;
      padding: 20px 40px;
      color: #fff;
      font-weight: bold;
      font-size: 18px;
      background-color: #9d2235;
      width: 400px;
    }

    a#login-submit:hover {
      background-color: #8a1123;
    }

    .internal-login-button {
      margin-top: 40px;
    }

    a#internalLoginToggle {
      display: inline-block;
      padding: 20px 40px;
      color: #000;
      font-weight: bold;
      font-size: 18px;
      background-color: #999;
      width: 400px;
    }

    a#internalLoginToggle:hover {
      background-color: #000;
      color: #fff;
    }

    #footerContainer {
      background-color: #000;
      color: #fff;
      margin: 100px 0 0 0;
      padding: 100px 0;
    }

    #footerContainer #footer {
      width: 1000px;
      margin: 0 auto;
      text-align: center;
    }

    #footerContainer #footer p {
      margin-bottom: 20px;
    }

    @media all and (max-width: 999px) {
      body {
        max-width: 100%;
      }
      
      #header {
        width: 100%;
        max-width: 100%;
      }

      #header img {
        width: 75%;
        height: auto;
      }

      #hero {
        width: 100%;
        max-width: 100%;
        height: auto;
      }

      #loginBoxContainer {
        width: 100%;
        max-width: 100%;
      }

      #loginErrorContainer {
        width: 100%;
        max-width: 100%;
      }

      #loginErrorMessage {
        width: auto;
        max-width: 80%;
      }

      a#login-submit {
        width: 70%;
        max-width: 90%;
      }

      #footerContainer #footer {
        width: 100%;
        max-width: 100%;
      }

      #footerContainer #footer img {
        width: auto;
        max-width: 70%;
      }
    }
  </style>
</bbNG:cssBlock>

<div id="main">
  <div id="header">
    <img src="/bbcswebdav/library/login/upst/upst-logo.png" />
  </div>
  <div id="hero"><img src="/bbcswebdav/library/login/upst/homemeetupsttilenotext3xjpg.jpg" /></div>
  <div class="body">
    <loginUI:errorMessage />

    <div id="loginBoxContainer">
      <p><img src="/bbcswebdav/library/login/dese/bb-learn.jpg" /></p>
      <div class="login-button"><a id="login-submit" href="#">UMPO Secure Login</a></div>

      <div class="internal-login-button">
        <a id="internalLoginToggle">Internal Users Login Here</a>
        <div id="internalLoginForm" style="display:none">
          <loginUI:loginForm loginText="Submit" forgotPasswordText="Need Your Password?" />
        </div>
      </div>
    </div>
  </div>
</div>
<div id="footerContainer">
  <div id="footer">
      <p><img src="/bbcswebdav/library/login/upst/po-logo.png" /></p>
      <p>&copy;2020 University of Massachusetts</p>
  </div>
</div>

</bbNG:genericPage>
