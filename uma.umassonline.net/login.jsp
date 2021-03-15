<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
  String targetElement = "bb-session-key";
  String targetHeader = "referer";
  String targetUserAttribute = "UserId: {unset id}";
  String targetLocation = "https://umol.umass.edu/Shibboleth.sso/Logout?return=https://webauth.umass.edu/Logout";
  String targetReferer = "https://uma.umassonline.net";
  
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
<bbNG:genericPage authentication="N" wrapper="false" globalNavigation="false">

 <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>
 
<div id="pagewrap">
  <div class="covid">
    Coronavirus updates and resources can be found at 
  	<a href="https://umass.edu/coronavirus" target="_blank">umass.edu/coronavirus</a>.
  </div>
  <!-- Begin top banner -->
  <div class="top">
    <div id="logo">
      <a href="http://www.umass.edu/" title="Home" rel="home" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/UMwordmark.png" width="204" height="26" alt="UMass Amherst"/></a>
      <div class="uma-search">
        <form action="//googlebox.oit.umass.edu/search" method="get">
          <h2 class="element-invisible">Search Google Appliance</h2> 
          <label class="element-invisible" for="edit-search-keys">Enter the terms you wish to search for. </label> 
          <input placeholder="Search UMass" id="edit-search-keys" type="text" name="q" size="15" maxlength="256" value=""> 
          <input type="submit" name="button" value="Go"> <input type="hidden" name="site" value="default_collection"> 
          <input type="hidden" name="client" value="default_frontend"> 
          <input type="hidden" name="output" value="xml_no_dtd"> 
          <input type="hidden" name="proxystylesheet" value="default_frontend">
        </form> 
      </div>
    </div>
  </div>
  <!-- End top banner -->
  <!-- Begin top nav bar -->
  <div>
    <ul id="metanav">
        <li><a title="" href="https://www.umass.edu/it/portal/myumassappreplacesgoumassportaljune2018" target="_blank">My UMass</a></li>
        <li><a title="" href="http://www.it.umass.edu/email" target="_blank">Email</a></li>
        <li><a title="" href="http://www.spire.umass.edu" target="_blank">SPIRE</a></li>
        <li><a title="" href="https://moodle.umass.edu" target="_blank">Moodle</a></li>
        <li><a title="" href="http://www.it.umass.edu/online-storage-collaboration" target="_blank">Online Storage</a></td>
        <li class="last"><a title="" href="http://umass.edu/peoplefinder/" target="_blank">People Finder</a></li>        
    </ul>
  </div>
  <!-- End top nav bar -->
  <!-- Begin page header -->
  <div class="header">
    <div class="header-title">  
      <h1>Online Learning</h1>
      <p>in Blackboard Learn</p>
    </div>
  </div>
  <!-- End page header -->
  <!-- Responsive 3 columns -->  
  <section id="contentLeft">
    <div class="uma-loginbox">
      <div class="uma-logintitle">
        <h2>Login to Blackboard Learn</h2>  
      </div>
      <p><a id="login-submit" href="#">Log in with NetID</a></p> 
      <p>You must have an active UMass Amherst <a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password#Your%20NetID" target="_blank">NetID</a> to log in.</p>
      <p><a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password#Forgot%20your%20password?" target="_blank">Forgot Your Password?</a></p> 
    </div>
    <p><a href="https://umass.edu/online" target="_blank">UMass Amherst University Without Walls</a> presents online courses on the Blackboard Learn learning management system through <a href="http://www.umassonline.net" target="_blank">UMassOnline</a>.</p>  
    <h3>eCampus FAST Adoption Tool</h3>
    <p>Instructors and departments should use the 
    <a href="https://fast.ecampus.com/sign-in?action=samllogin&schoolid=6368" target="_blank">eCampus FAST Adoption Tool</a>
    to enter textbooks and other course materials.</p>
    <p>See <a href="http://simages.ecampus.com/images/vbs/pdf/UMass-how-to-submit-course-materials-fall-2018.pdf" target="_blank">eCampus @ UMass</a>
    for more information.</p>
  </section>
  
  <section id="middle">   
    <loginUI:errorMessage />

    <!-- placeholder content -->
    <h3>News & Announcements</h3> 

    <loginUI:systemAnnouncements maxItems="5" />
    <!-- End placeholder content -->
  </section>

  <aside id="sidebar">
    <div class="uma-helpitem">
      <h3>Need Help?</h3>
      <p>Contact the <a href="http://supportcenter.embanet.com/uma" target="_blank">24/7 Support Center</a></p>
    </div>
    <div class="uma-helpitem">
      <h3>New Students</h3>
      <p><a href="https://www.it.umass.edu/accounts/activate-your-account" target="_blank">Activate your UMass Amherst IT Account</a></p>
      <p>If you have questions about registration, email:<br>
      <a href="mailto:regoff@uww.umass.edu">regoff@uww.umass.edu</a></p>
    </div>
    <div class="uma-helpitem">
      <h3>How Do I Enroll?</h3>
      <p>All students, including Non-Degree (ND), enroll in classes directly in
      <a href="https://www.spire.umass.edu/" target="_blank">SPIRE</a>, the UMass Amherst Student Information System.
      <a href="https://www.umass.edu/online/how-enroll" target="_blank">Read more...</a></p>
    </div>
    <div class="uma-helpitem">
      <p class="top10"><a href="https://www.umass.edu/diversity/building-community-dignity-and-respect" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/dignity-and-respect.jpg" /></a></p>
    </div>
  </aside>
  <!-- End 3 columns -->  
  <!-- Begin footer -->    
  <footer>
    <div class="footlinks">
      <p><a href="http://www.umassonline.net/copyright" target="_blank">Copyright Compliance</a> |
      <a href="https://www.umassp.edu/privacy-policy" target="_blank">Privacy Policy</a> |
      <a href="https://help.blackboard.com/Learn/Student/Getting_Started/Browser_Support/Browser_Checker" target="_blank">Site Requirements</a> |
      <a href="https://www.umass.edu/cpe/contact-us" target="_blank">Contact Us</a></p>
    </div>
        
    <div class="footdisclaimer">        
      <p>©2021 University of Massachusetts&nbsp;•&nbsp;<a href="http://umass.edu/site-policies" target="_blank">Site Policies</a>
      <a href="mailto:info@oe.umass.edu">Site Contact</a></p>
    </div>
  </footer>
</div>

<div id="hiddenLoginContainer" style="display:none">
  <loginUI:loginForm />
</div>

<bbNG:cssBlock>
<link rel="icon" type="image/ico" href="/bbcswebdav/library/login/uma/images/template/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
<style type="text/css">
body { 
  background-color: #EEEEEE;
  min-width: 100%;
}

html, body, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, caption {
	font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif !important;
  background-image: none;
	color: #323232;
  margin: 0px;
  padding: 0px;
  border: 0px none;
  outline: 0px none;
  font-weight: 400;
  font-style: normal;   
	font-size: 1em;
	line-height: 1.25em;
	z-index:1;
}
p {
	margin: 0 0 15px 0;
}
p.top10 {
	margin-top: 10px;
}
a { 
	text-decoration: underline;
	color: #881c1c;
}
#pagewrap {
	width: 960px;
	border: none;
	background-color: #FFFFFF;
	text-align: left;
	box-shadow: 6px 0 10px -7px #888, -6px 0 10px -7px #888;
	margin: 0 auto;
}	
div.covid {
	padding: 10px 20px;
	background-color: #ECBA0E;
}
div.top {
    background-color: #881C1C;
    height: 65px;
    width: 100%;
    padding: 0;
}
#logo {
	padding: 15px 0 0 30px;	
}
.element-invisible {
	display:none;
}
div.uma-search {
	float: right;
	vertical-align: middle;
	padding: 0 20px 0;
}
#metanav {
	background: #303030 linear-gradient(to bottom, #303030 50%, #444 100%) repeat scroll 0% 0%;
	text-align: right;
	margin: 0px;
	padding-right: 2em;
	background-color: #262626;
	height: auto; 
}
#metanav li {
	display: inline-block;
    border-right: 1px solid #000;
    margin: 0px;
}
#metanav li.last {
    border: medium none;
}
#metanav a {
	font-weight: 400;
	font-size: 0.8em;
	display: block;
	color: #FFFFFF; 
	text-decoration: none; 
	color: #FFF;
	padding: 0.5em 1em;
}
#metanav a:hover {
	color: #FFFFFF
}
div.header {	
	box-shadow: 0px 3px 5px -2px rgba(0, 0, 0, 0.65);
	position: relative;
	min-height: 390px;
	margin-bottom: 20px;
	background-image: url("/bbcswebdav/library/login/uma/images/template/2019-spring-uma.jpg");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: 100% auto;
}
div.header-title {
	background-color: rgba(0, 0, 0, 0.2);
	margin-bottom: 50px; 
}
.header H1{
	color: #FFF;
	font-weight: 700;
	font-size: 2.25em; 
	/*font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;*/
	padding: 12px 0 0 20px;
}
.header p {
	color: #FFF;
	font-weight: 700;
	font-size: 1.25em; 
	padding: 8px 0px 20px 20px;
}
#contentLeft {
	width: 290px;
	float: left;
	padding: 5px 15px;
}
#contentLeft img {
	padding: 12px 0;
}
#contentLeft p {
	font-size: .9em;
}
#contentLeft h3 {
	padding-top: 20px;
	padding-bottom: 20px;
	border-top: #8b8b8b solid 1px;
	margin-top: 20px;
}
div.uma-loginbox {
	background-color: #E7E7E7;
	border: 1px solid #7E7E7E;
	border-radius: 4px;
	padding: 0 0 10px;
	margin: 0 0 35px;
	width: 95%;
	max-width: 320px;
}
div.uma-logintitle {
	color: #FFF;
	background-color: #555;
	padding: 10px 15px;
}
.uma-logintitle H2 {
	color: #FFF;
	font-family: inherit;
	font-size: 1.15em;
	font-weight: normal;
}	
.uma-loginbox p {
	font-size: .9em;
	margin: 15px;
}
.uma-loginbox form button[type="submit"] {
	color: #FFFFFF;
	cursor: pointer;
	height: 2em;
	font-family: inherit; 
	font-size: 1.075em;
	font-weight: normal;
	background-color: #913000; 
	padding: 0 10px;
	margin: 10px 0;
	border: none;
	/* border-radius: 4px;*/
	box-shadow: -2px -2px 8px rgba(0, 0, 0, 0.025);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-image: -moz-linear-gradient(top, #cd1502, #950e02); /* FF 3.6+ */
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#cd1502), to(#950e02)); /* Safari 4+, Chrome 2+ */
	background-image: -webkit-linear-gradient(top, #cd1502, #950e02); /* Safari 5.1+, Chrome 10+ */
	background-image: -o-linear-gradient(top, #cd1502, #950e02); /* Opera 11.10 */
	background-image: linear-gradient(to bottom, #cd1502, #950e02); /* Standard, IE10 */
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#cd1502',endColorstr='#950e02' , GradientType=0); /* IE9 and down*/
}
a#login-submit {
	color: #FFFFFF !important;
	text-decoration: none;
	display: block;
	cursor: pointer;
	height: 2em;
	font-family: inherit; 
	font-size: 1.075em;
	font-weight: normal;
	background-color: #913000; 
	padding: 10px 10px 0 10px;
	margin: 15px 0;
	border: none;
	/* border-radius: 4px;*/
	box-shadow: -2px -2px 8px rgba(0, 0, 0, 0.025);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	background-image: -moz-linear-gradient(top, #cd1502, #950e02); /* FF 3.6+ */
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#cd1502), to(#950e02)); /* Safari 4+, Chrome 2+ */
	background-image: -webkit-linear-gradient(top, #cd1502, #950e02); /* Safari 5.1+, Chrome 10+ */
	background-image: -o-linear-gradient(top, #cd1502, #950e02); /* Opera 11.10 */
	background-image: linear-gradient(to bottom, #cd1502, #950e02); /* Standard, IE10 */
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#cd1502',endColorstr='#950e02' , GradientType=0); /* IE9 and down*/
}
#middle {
	width: 294px; /* Account for margins + border values */
	float: left;
	padding: 5px 15px;
	margin: 0px 5px 5px 5px;
}

#middle h3 {
	font-size: 1.25em;
	font-weight: 700;
	line-height: 1;
	color: #676767;
	margin: 0;
	padding: 0 0 25px;
}
div#loginAnnouncements ul {
  text-align: left;
  width: auto;
}
div#loginAnnouncements ul li {
  font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
  list-style: outside none none;
  text-align: left;
  background: #fff none repeat scroll 0 0;
  color: #666;
  font-size: 95%;
  margin: 0 0 30px 0;
  padding: 0;
  position: relative;
  vertical-align: top;
  -moz-box-shadow: none;
  -webkit-box-shadow: none;
}
div#loginAnnouncements ul li::before {
  left: 8px;
  transform: rotate(-2deg);
}
div#loginAnnouncements ul li::before, #loginAnnouncements ul li::after {
  bottom: 0;
  box-shadow: none !important;
  content: "";
  height: 20%;
  max-width: 294px;
  position: relative;
  width: 50%;
  z-index: -2;
}
#loginAnnouncements ul li::after {
  right: 0;
  transform: none;
}
#loginAnnouncements ul li:first-child {
  border-top: 0 none;
}
div#loginAnnouncements ul li strong:first-child {
	color: #676767;
	font-weight: normal;
	font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
	font-size: 1.125em;
}
div#loginAnnouncements ul li strong+em {
  text-align: left;
  font-family: inherit;
}
div#loginAnnouncements ul li .vtbegenerated {
	font-size: .9em;	 
	overflow-x:visible;
  line-height: inherit;
}
div#loginAnnouncements .announcementDate {
	font-style: italic;
	font-weight: 300;
	font-size: .9em;
	color: #676767;
	display: inline-block;
	padding-bottom: 12px;
	float: none
}
div#loginAnnouncements a, div#loginAnnouncements a:hover, div#loginAnnouncements a:focus {
  border-bottom: none;
}
#sidebar {
	width: 270px;
	padding: 5px 15px;
	float: left;
}
div.uma-helpitem {
	padding-bottom:20px;
	border-top: #8b8b8b solid 1px;
}
.uma-helpitem H3 {
	font-size: 1.125em;
	font-weight: 700; 
	color: #676767;
	padding-top: 10px;
}
.uma-helpitem p {
	font-size: .9em;	
}

section h3 {
	font-size: 1.125em;
	font-weight: bold; 
	color: #676767;
	padding-bottom: 10px;
}

section a, aside a { 
  text-decoration: underline;
  color: #881c1c !important;
}
#metanav a {
  color: #FFFFFF !important;
} 

footer {
	clear: both;
	padding: 15px;
}
.footlinks p, .footdisclaimer p {
	text-align: center;
	font-size: 0.9em;
	color: #C0C0C0; 
}
.footlinks a, .footdisclaimer a {
	color: #FFF;
}


/************************************************************************************
MEDIA QUERIES
*************************************************************************************/
/* for 980px or less */
@media screen and (max-width: 980px) {
	
	#pagewrap {
		width: 94%;
	}
	#contentLeft {
		width: 41%;
		padding: 1% 4%;
	}
	#middle {
		width: 41%;
		padding: 1% 4%;
		margin: 0px 0px 5px 5px;
		float: right;
	}
	
	#sidebar {
		clear: both;
		padding: 1% 4%;
		width: auto;
		float: none;
	}

	footer {
		padding: 1% 4%;
	}
}

/* for 700px or less */
@media screen and (max-width: 700px) {

	div.header {
		background-size: auto 100%;
	}

}

/* for 600px or less */
@media screen and (max-width: 600px) {

	#contentLeft {
		width: auto;
		float: none;
	}
	
	#middle {
		width: auto;
		float: none;
		margin-left: 0px;
	}
	
	#sidebar {
		width: auto;
		float: none;
	}

}

/* for 480px or less */
@media screen and (max-width: 480px) {

	h1 {
		font-size: 2em;
	}
	#sidebar {
		display: none;
	}

}


#contentLeft, #middle, #sidebar {
	margin-bottom: 0px;
}
footer {
	background-color: #555;
}

</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">  
  var umolJQ = jQuery.noConflict();
  
  umolJQ(document).ready( function() {
  
    var ssoLoginUrl = umolJQ('#loginRedirectProviderList').children('li:first-child').children('a:first-child').attr('href');
    
    umolJQ('#login-submit').attr('href', ssoLoginUrl);
    
    umolJQ('#hiddenLoginContainer').remove();
    
  });
</script>
<script type="text/javascript">  
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-793538-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</bbNG:jsBlock>

<bbNG:jsBlock>
<!-- BRU - Bing Pixel -->
<script>(function(w,d,t,r,u){var f,n,i;w[u]=w[u]||[],f=function(){var o={ti:"27003796"};o.q=w[u],w[u]=new UET(o),w[u].push("pageLoad")},n=d.createElement(t),n.src=r,n.async=1,n.onload=n.onreadystatechange=function(){var s=this.readyState;s&&s!=="loaded"&&s!=="complete"||(f(),n.onload=n.onreadystatechange=null)},i=d.getElementsByTagName(t)[0],i.parentNode.insertBefore(n,i)})(window,document,"script","http://bat.bing.com/bat.js","uetq");</script>
<!-- BRU - Fb Pixel -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1037955113033742');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1037955113033742&ev=PageView&noscript=1"
/></noscript>
<!-- BRU - Global site tag (gtag.js) - Google Ads: 801260051 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-801260051"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-801260051');
</script>
<!-- BRU - Lotame Pixel -->
<img src="https://bcp.crwdcntrl.net/5/c=14957/b=87264979" width="1" height="1"/>
</bbNG:jsBlock>

</bbNG:genericPage>