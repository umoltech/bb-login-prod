<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page" globalNavigation="false">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<% 
	String targetElement = "bb-session-key";
	String targetHeader = "referer";
	String targetUserAttribute = "UserId: {unset id}";
	String targetLocation = "https://login.umassd.edu/logout";
	String targetReferer = "https://umassd.umassonline.net";
	
	java.util.Enumeration enuR = request.getAttributeNames();
	java.util.Enumeration enuH = request.getHeaderNames();
	
	while(enuR.hasMoreElements()) {
        String elementName = (String)enuR.nextElement();	
		if (elementName == targetElement) {		
			Object elementValue = request.getAttribute(targetElement);
			
			while(enuH.hasMoreElements()) {
				String headerName = (String)enuH.nextElement();
				String headerValue = request.getHeader(headerName);
				
				if (headerName.toLowerCase().equals(targetHeader)) {
					if (headerValue.length() > 7) {
						if (elementValue.toString().contains(targetUserAttribute) && headerValue.contains(targetReferer)) {
							response.setStatus(response.SC_MOVED_TEMPORARILY);
							response.setHeader("Location", targetLocation);
						}
					}
				}
			}
		}
	}	
%>

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