<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page-body">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
     
  <bbNG:jsBlock>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
      jQuery().ready( function() {  
        jQuery.noConflict();
        
        var dhcd_help = jQuery('#dhcd-help').html();
        
        jQuery('.forgot').html(dhcd_help);
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
        height: 295px;
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
        height: 295px;
        background: transparent url('/bbcswebdav/library/login/dhcd/bg-campus.png') no-repeat top center;
      }
      
      #loginBodyContainer {
        width: 1000px;
        height: 330px;
        padding: 0;
        margin-bottom: 0;
      }
      
      #loginBodyContainer #loginBox {
        width: 400px;
        height: 290px;
        padding: 30px 0 0 0;        
        float: right;
      }
      
      #loginBodyContainer #loginBox ul {
        width: 320px;
      }
      
      #loginBodyContainer #loginBox input[type="text"], 
      #loginBodyContainer #loginBox input[type="password"] {
        border-color: #4bacc6;
        border-width: 2px;
        background-color: #b7dee8;
        color: #000;
      }
      
      #loginBodyContainer #loginBox li label {
        text-transform: none;
      }
      
      #loginBox li input[type="submit"] {
        margin-left: 150px;
        background: #c02e7a;
        font-size: 110%;
        padding: 8px 15px;
        cursor: pointer;
        color: #ffffff;
      }
      
      #loginBox li .forgot {
        display: block;
        width: auto;
        float: left;
        font-weight: bold;
        color: #1f497d;
      }
      
      #loginBox .forgot a {
        color: #1f497d;
        border: 0;
        text-decoration: underline;
      }
      
      #loginBodyContainer #loginDescription {
        width: 550px;
        height: 300px;
        padding: 30px 47px 0 0;
        float: left;
        text-align: center;
        font-family: "Calibri", verdana, arial;
        font-size: 30px;
        font-weight: bold;
        color: #666666;
      }
      
      #loginBodyContainer #loginDescription p {
        margin-bottom: 20px;
        font-weight: normal;
        font-size: 70%;
      }
      
      #loginBodyContainer #loginDescription p.bold {
        font-weight: bold;
        font-size: 100%;
      }
      
      #loginBodyContainer #loginDescription img {
        margin-bottom: 20px;
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
      
      #loginPane {
        padding-bottom: 150px;
        margin-bottom: 0;
        background: url('/bbcswebdav/library/login/dhcd/bg-foot.jpg') repeat-x center bottom;
      }
      
      #copyright {
        background-color: #a8a69c;
        padding-top: 40px;
        padding-bottom: 40px;
        margin: 0 0 0 0;
        display: block;
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
              <loginUI:loginForm 
                userNameFieldLabel="Type in your email address:" 
                passwordFieldLabel="Type in your password:"
                loginText="Click here to Enter"
              />
            </div>
            <div id="loginDescription">
              <p>Welcome to the Massachusetts Department of Housing and Community Development's</p>
              <p class="bold">Local Housing Authority<br />Board Member Training Program</p>
              <div><img src="/bbcswebdav/library/login/dhcd/dhcd-logo.jpg" alt="DHCH logo" /></div>
              <div><img src="/bbcswebdav/library/login/dhcd/seal.png" alt="MA seal" /></div>
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

  <div id="dhcd-help" style="display:none">Need Help? Please 
    <a href="https://confluence.umassonline.net/display/MDHCD/Contact+Support" target="_blank">Contact Us</a>!<br />&nbsp;<br />
    <a href="https://confluence.umassonline.net/display/MDHCD/Guide" target="_blank">Get Step-by-Step Instructions</a>
  </div>
</bbNG:genericPage>