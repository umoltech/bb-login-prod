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

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<bbNG:cssBlock>
  <style type="text/css">
    div.loginBody {
      background: url("http://www.umassmedcwm.org/ud/ud-logo-w.png") no-repeat scroll 94px 94px transparent;
    }

    #loginBox li label, .portlet #loginBoxFull li label {
      color: #ECECEC;
    }

    a, .portlet .subCategories li a, .blockGroups .itemHead, .blockGroups .itemHeadOpen {
      color: #C2989D;
    }

    .forgot a {
      border-bottom: 1px dotted #C2989D;
    }

    #loginAnnouncements a {
    border-bottom: 1px dotted #C2989D;
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
          <% if (isMigration) { %>
            <div class="migration">
              <p><strong>Please Note</strong></p>
              <p>This system is unavailable today due to a content migration.</p>
            </div>
          <% } else { %>
            <loginUI:loginForm />
          <% } %>
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