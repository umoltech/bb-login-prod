<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<%--
  This is a standard wrapper for all AS pages.  It is recommended that you keep this tag.
  --%>
<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
   
<bbNG:cssBlock>
<style type="text/css">
  #loginFormList li label {
    font-weight: bold;
  }
</style>
</bbNG:cssBlock>
   
  <bbNG:jsBlock>
    <script type="text/javascript">
      function loadLoginPage()
      {
    	  if ( top != self )
    	  {
    		  top.location.replace( self.location.href );
    		}
    	  if(document.forms.login.user_id != undefined)
    		{
    		  document.forms.login.user_id.focus();
    		}
    	  setTimeout("triggerScreenreaderAlert()", 500);
      }
      
      function triggerScreenreaderAlert()
      {
    	if ( document.getElementById( 'loginErrorMessage' ) )
  	    {
    	  $( 'loginErrorMessage' ).update( $('loginErrorMessage').innerHTML );
  	    }
      }
    </script>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript">		
		jQuery.noConflict();
		jQuery().ready( function() {			
			jQuery('label[for="user_id"]').text('UMassD E-mail Address:');
			jQuery('.forgot').remove();
		});
	</script>
</bbNG:jsBlock>

<div id="loginPageContainer">
  <div id="loginPane">

    <div id="loginContainer">
      <div id="loginHeader" class="clearfix">
        <h1 class="hideoff">${productName}</h1>
        <img src="/images/ci/logos/Bb_newLogo_060.png" alt="${productName}" class="productLogo" />
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

<bbNG:jsBlock>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-793538-9', 'umassd.edu');
  ga('send', 'pageview');

</script>
</bbNG:jsBlock>

</bbNG:genericPage>
