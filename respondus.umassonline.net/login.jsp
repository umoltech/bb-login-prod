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
   
  <bbNG:jsBlock>
    <script type="text/javascript">
      function loadLoginPage() {
        if (top != self) {
    		top.location.replace(self.location.href);
    	  }
      }
    </script>
  </bbNG:jsBlock>
  
	<bbNG:cssBlock>
		<style type="text/css">
			body, body.login-page-body { 
				background-color: #ffffff;
				background-image: none;
				margin: 0;
			}
			
			#loginContainer #loginTitle {
				text-align: center;
				margin-bottom: 20px;
			}
			
			#loginContainer #loginTitle h1 {
				background-color: #eeeeee;
				padding: 10px 0;
				margin-top: 0;
				font-size: 180%;
			}
			
			#loginContainer div.loginBody {
				background-color: #ffffff;
				background-image: none;
				background-repeat: no-repeat;
				background-position: center top;
				padding: 0;
			}
			
			#loginAnnouncements ul {
				width: 500px;
			}
			
			#loginAnnouncements li {
				background-color: #FFFF99;
			}
			
			#jumpBox { 
				width: 400px; 
				margin: 0 auto 40px auto; 
				text-align: center; 
			}
			
			#jumpBox form { 
				margin-bottom: 20px; 
			}    
			
			#jumpBox form button { 
				width: 350px; 
				cursor: pointer;
			}
		</style>
	</bbNG:cssBlock>



<div id="loginPageContainer">
  <div id="loginPane">

    <div id="loginContainer">
      <div id="loginTitle" class="clearfix">
        <h1>Respondus LockDown Browser Login</h1>
      </div>

      <div id="loginLang" class="clearfix">
        <loginUI:localePicker />
      </div>

      <div class="clearfix loginBody">
        <loginUI:errorMessage />
		<div id="jumpBox">
			<h3>Choose Your Campus:</h3>
			<form action="https://umb.umassonline.net" method="get">
				<button type="submit" class="submit button-1">University of Massachusetts Boston</button>
			</form>
			<form action="https://umassmed.umassonline.net" method="get">
				<button type="submit" class="submit button-1">University of Massachusetts Medical School</button>
			</form>
			<form action="https://bbl.westfield.ma.edu" method="get">
				<button type="submit" class="submit button-1">Westfield State University</button>
			</form>
		</div>

        <div id="loginBox">
		  <!--
			<loginUI:loginForm />          
		  -->
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
