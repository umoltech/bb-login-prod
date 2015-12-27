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
				
				jQuery('.forgot').html('Need Help?  Contact <a href="mailto:techsupport@donahue.umassp.edu">techsupport@donahue.umassp.edu</a>');
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
        border-top: 3px solid #c4cfdc;
        border-bottom: 3px solid #c4cfdc;
        margin-bottom: 50px;
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
				border-color: #385d8a;
				background-color: #4f81bd;
				color: #ffffff;
			}
			
			#loginBodyContainer #loginBox li label {
				text-transform: none;
			}
      
      #loginBox li input[type="submit"] {
        margin-left: 195px;
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
			}
			
			#loginBodyContainer #loginDescription {
				width: 550px;
				height: 300px;
				padding: 30px 47px 0 0;
        border-right: 3px solid #c4cfdc;
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
			}
      
			#loginBodyContainer #loginDescription p.bold {
        font-weight: bold;
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
          <div class="loginBodyBackground clearfix"></div>
					<loginUI:errorMessage />
					
					<div id="loginBodyContainer">
						<div id="loginBox">
							<loginUI:loginForm />          
						</div>
						<div id="loginDescription">
							<p>Welcome to the Massachusetts Department of Housing and Community Development's</p>
              <p class="bold">Local Housing Authority<br />Board Member Training Program</p>
              <div><img src="/bbcswebdav/library/login/dhcd/seal.png" /></div>
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
