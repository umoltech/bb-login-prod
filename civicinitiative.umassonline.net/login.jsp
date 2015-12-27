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
  Date migrationEnd = new Date(115, 11, 28, 15, 0, 0);
  
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
				margin: 0;
			}
			
			#loginPageHeader #loginPageTitle {
				background-color: #c0504d;
				font-family: "Calibri", verdana, arial;
				font-size: 24pt;
				font-weight: bold;
				color: #ffffff;
				line-height: 24pt;
				padding: 36px 0;
			}
			
			#loginPageHeader #loginPageTitle span {
				width: 950px;
				margin: 0 auto;
				display: block;
			}
			
			#loginPageHeader #loginPageErrorMessage {
				background-color: #d99694;
				height: 24px;
			}
			
			#loginContainer div.loginBody {
				background-color: #ffffff;
				background-image: none;
				padding: 40px 0 0 0;
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
				overflow: hidden;
			}
			
			#loginBodyContainer #loginBox {
				width: 397px;
				height: 234px;
				padding: 20px 0 0 0;				
				border-top: 3px solid #dfe5ec;
				border-bottom: 3px solid #dfe5ec;
				border-left: 3px solid #dfe5ec;
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
			
			#loginBodyContainer #loginBox li .forgot {
				display: block;
				width: 220px;
				float: left;
			}
			
			#loginBodyContainer #loginBox .forgot a {
				color: #254061;
				/*font-weight: bold;
				font-size: 120%;
				*/
				border: 0;
			}
			
			#loginBodyContainer #loginLogo {
				width: 550px;
				height: 210px;
				padding: 50px 0 0 0;
				background-color: #254061;
				float: right;
				text-align: center;
				font-size: 125%;
				font-family: "Calibri", verdana, arial;
				font-weight: bold;
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
		<div id="loginPageHeader">
			<div id="loginPageTitle"><span>The UMass Donahue Institute Civic Initiative</span></div>
			<div id="loginPageErrorMessage"><loginUI:errorMessage /></div>
		</div>
		<div id="loginPane">
			<div id="loginContainer">
				<div id="loginLang" class="clearfix">
					<loginUI:localePicker />
				</div>
				<div class="clearfix loginBody">				
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
							<img src="/bbcswebdav/library/login/ci/civic-initiative.gif" alt="Civic Initiative" />
							<p><a href="http://www.civicinitiative.com" target="_blank">www.civicinitiative.com</a></p>
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
