<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="N" globalNavigation="N" onLoad="loadLoginPage()" bodyClass="login-page">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
  <style type="text/css">
    body.login-page {
      background-color: #999 !important;
    }
    
    div.loginBody {
      background: url("http://www.umassmedcwm.org/ud/ud-logo-w.png") no-repeat scroll 94px 94px transparent;
    }

    #loginBox li label, .portlet #loginBoxFull li label {
      color: #ECECEC;
    }

    a, .portlet .subCategories li a, .blockGroups .itemHead, .blockGroups .itemHeadOpen {
      color: #fff;
    }

    .forgot a {
      border-bottom: 1px dotted #fff;
    }

    #loginAnnouncements a {
    border-bottom: 1px dotted #C2989D;
    }
    
    .login-page #copyright {
      position: relative !important;
      margin: 20px auto !important;
      display: block !important;
      bottom: auto;
      left: auto;
      right: auto;
      top: auto;
    }
  </style>
</bbNG:cssBlock>

<div id="loginPageContainer">
  <div id="loginPane">

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <h1 class="hideoff">${productName}</h1>
        <img src="http://www.umassmedcwm.org/ud/ud-logo-w.png" alt="${productName}" class="productLogo" />
        <loginUI:accessibility />
      </div>

      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>

      <div class="clearfix loginBody">
        <loginUI:errorMessage />

        <div id="loginBox">
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