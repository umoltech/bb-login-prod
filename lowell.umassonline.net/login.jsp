<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page" globalNavigation="false">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
  
  <bbNG:jsBlock>	
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">	
      jQuery.noConflict();
      
      jQuery('#loginBox').children('form').remove();
      
      jQuery('#loginRedirectProviders').children('h3').remove();
      
      jQuery('#redirectProvidersDropdownButton').remove();
      
      jQuery('#loginBox').show();
    </script>
  </bbNG:jsBlock>
  
  <bbNG:cssBlock>
    <style type="text/css">
      #loginContainer div.loginBody {
        background-position: center 50px;
      }
      
      .alert {
        background-color: #ffff00;
        color: #990000;
        font-weight: bold;
        margin: 0 auto 40px;
        padding: 10px 17px;
        text-align: center;
        width: 400px;
      }
      
      #loginBox {
        max-width: 400px;
        display: block;
        margin: 0 auto;
      }
      
      #loginBox p {
        font-size: 125%;
        margin-top: 40px;
      }
      
      #loginBox ul li {
        padding: 0;
      }
      
      #loginRedirectProviderList {
        display: block; 
        position: relative;
      }
      
      #loginRedirectProviderList li a {
        display: block;
        font-size: 125%;
        font-weight: bold;
        color: #FFF;
        background-color: #0469b1;
        padding: 20px 40px;
        text-decoration: none;
        border-radius: 5px;
      }
      
      #loginRedirectProviderList li a:hover, #loginRedirectProviderList li a:focus {
        background-color: #000;
        text-decoration: none;
      }
    </style>
  </bbNG:cssBlock>  

  <div id="loginPageContainer">
    <div id="loginPane">
      <div id="loginContainer">
        <div id="loginHeader" class="clearfix">
          <h1 class="hideoff">${productName}</h1>
          <bbNG:image src="/images/ci/logos/Bb_newLogo_060.png" alt="${productName}" class="productLogo" />
          <loginUI:accessibility />
        </div>

        <div id="loginLang" class="clearfix">
          <loginUI:localePicker />
        </div>

        <div class="clearfix loginBody">          
          <loginUI:errorMessage />

          <div id="loginBox" style="display:none">
            <loginUI:loginForm />         
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