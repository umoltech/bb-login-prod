<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<bbNG:genericPage authentication="N" wrapper="false" globalNavigation="false" skipCoreCss="false" allowScale="true">
   
<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
   
<bbNG:jsBlock>
<script type="text/javascript">
</script>
</bbNG:jsBlock>

<bbNG:cssBlock>
<style type="text/css">
	body { 
		background-image: url("/bbcswebdav/library/login/uma/images/bg/old-chapel.jpg");
		background-repeat: no-repeat;
		background-position: center;
		background-size: 100% auto;
		background-attachment: fixed;
		background-color: #fff;
		margin: 0;
	}

	div#loginHeaderBanner {
		padding: 20px 30px;
		background-color: #86130e;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
	}

	div.loginBody {
		background-color: #fff;
		background-image: none;
		margin: 25vh auto 0 auto;
		padding: 20px 0;
		border-top: 10px solid #86130e;
		width: 500px;
		max-width: 90%;
	}

	div#loginBox ul {
		width: 90%;
	}

	div#loginBox form li+li+li,
	div#loginBox form li+li+li+li {
		display: block;
		float: none;
		text-align: center;
		width: 100%;
		padding-bottom: 30px;
	}

	div#loginBox li label {
		text-transform: none;
		padding-left: 8px;
	}

	div#loginBox input[type="text"], 
	div#loginBox input[type="password"] {
		border-top: 2px solid #000;
		border-right: 2px solid #000;
		border-bottom: 2px solid #86130e;
		border-left: 2px solid #000;
		background-color: #000;
		color: #fff;
		padding: 10px;
	}

	div#loginBox input[type="text"]:hover, 
	div#loginBox input[type="password"]:hover {
		border: 2px solid red;
		background-color: #2d2d2d;
	}

	div#loginBox li input[type="submit"] {
		background-color: #86130e;
		color: #fff;
		display: block;
		border-radius: 5px;
		border-style: none;
		border-width: 0;
		width: 100%;
		padding: 20px 0;
	}

	div#loginBox li input[type="submit"]:hover {
		background-color: red;
		cursor: pointer;
	}

	div#loginRedirectProviders {
		display: none;
	}

	div#loginFooterContainer {
		padding: 40px 0;
		margin: 0;
		background-color: #2d2d2d;
		position: fixed;
		bottom: 0;
		left: 0;
		width: 100%;
		display: block;
		text-align: center;
	}

	div#loginFooterContainer div#loginFooterContent {
		margin: 0 auto;
		display: block;
		text-align: center;
	}

	div#loginFooterContainer div#loginFooterContent span {
		color: #fff;
		font-size: 115%;
		padding-left: 2px;
		padding-right: 2px;
	}

	div#loginFooterContainer div#loginFooterContent span a {
		color: #fff;
		text-decoration: none;
	}

	@media screen and (max-width: 1200px) {
		body { 
			-webkit-background-size:cover;
			-moz-background-size:cover;
			-o-background-size:cover;
			background-size:cover;
			background-position:center;
		}
	}

	@media screen and (max-height: 600px) {
		div#loginHeaderBanner,
		div#loginFooterContainer {
			position: relative;
			top: auto;
			bottom: auto;
			left: auto;
			right: auto;
		}
	}
</style>
</bbNG:cssBlock>

<div id="loginHeaderBanner"><img src="/bbcswebdav/library/login/uma/images/template/UMwordmark.png" /></div>
<div id="loginPageContainer">
  <div id="loginPane">

    <div id="loginContainer">
      <div class="clearfix loginBody">
        <loginUI:errorMessage />

        <div id="loginBox">
          <loginUI:loginForm forgotPasswordText="Forgot Password?" loginText="Sign In" />          
        </div>
      </div>	    
    </div>

  </div>
</div>
<div id="loginFooterContainer">
	<div id="loginFooterContent">
		<span>&copy2019 University of Massachusetts Amherst</span>
		<span>&bull;</span>
		<span><a href="https://www.umass.edu/site-policies" target="_blank">Site Policies</a></span>
		<span>&bull;</span>
		<span><a href="mailto:elearning@oe.umass.edu">Site Contact</a></span>
	</div>
</div>
</bbNG:genericPage>