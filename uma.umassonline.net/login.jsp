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
	String targetRefererPost = "https://uma.umassonline.net";
	String targetRefererPre = "https://umassonline-uma.blackboard.com";
	
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
						if (elementValue.toString().contains(targetUserAttribute) && (headerValue.contains(targetRefererPost) || headerValue.contains(targetRefererPre))) {
							response.setStatus(response.SC_MOVED_TEMPORARILY);
							response.setHeader("Location", targetLocation);
						}
					}
				}
			}
		}
	}	
%>

<bbNG:genericPage authentication="N" wrapper="false">

<%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

<!-- header image map (2XL) -->
<map name="headermap">
	<area class="ext" target="_blank" shape="rect" coords="73,47,287,66" href="http://www.massachusetts.edu" alt="University of Massachusetts System" title="University of Massachusetts System" />
	<area class="ext" target="_blank" shape="rect" coords="73,66,114,85" href="http://www.umassulearn.net" alt="UMass Amherst" title="UMass Amherst" />
	<area class="ext" target="_blank" shape="rect" coords="114,66,146,85" href="http://www.umb.edu/academics/uc/online/" alt="UMass Boston" title="UMass Boston" />
	<area class="ext" target="_blank" shape="rect" coords="146,66,199,85" href="http://www.umassd.edu/pce/" alt="UMass Dartmouth" title="UMass Dartmouth" />
	<area class="ext" target="_blank" shape="rect" coords="199,66,233,85" href="http://continuinged.uml.edu/online/" alt="UMass Lowell" title="UMass Lowell" />
	<area class="ext" target="_blank" shape="rect" coords="233,66,287,85" href="http://www.umassmed.edu/cme/online_cme/index.aspx" alt="UMass Worcester" title="UMass Worcester" />
</map>

<div align="center">
	<div class="main">
		<div class="top">
			<div id="logo">
				<a href="http://www.umassonline.net/" title="Home" rel="home"><img src="/bbcswebdav/library/login/uma/images/template/header.gif" usemap="#headermap" /></a>
			</div>
			<div id="header-right">
				<div id="social-media">
					<div class="icon"><a href="http://www.facebook.com/MyUMassOnline" title="Visit UMassOnline on Facebook" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/facebook.png" alt="Facebook icon" ></a></div>
					<div class="icon"><a href="http://www.linkedin.com/company/86671" title="Visit UMassOnline on LinkedIn" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/linkedin.png" alt="LinkedIn icon" ></a></div>
					<div class="icon"><a href="http://twitter.com/MyUMassOnline" title="Visit @MyUMassOnline on Twitter" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/twitter.png" alt="Twitter icon" ></a></div>
					<div class="icon"><a href="http://www.umassonline.net/blog" title="Visit Blog" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/blog.png" alt="Blog icon" ></a></div>
					<div class="icon"><a href="http://www.pinterest.com/umassonline/" title="Visit UMassOnline on Pinterest" target="_blank"><img src="/bbcswebdav/library/login/uma/images/template/pinterest.png" alt="Pinterest icon" ></a></div>
				</div>
			</div>
		</div>
		<div class="nav" id="navbar">
			<table>
				<tr>
					<td><a href="http://www.umassonline.net/about-us">About Us</a></td>
					<td><a href="http://www.umassonline.net/distance-learning">Distance Learning</a></td>
					<td><a href="http://www.umassonline.net/programs">Programs</a></td>
					<td><a href="http://www.umassonline.net/courses">Courses</a></td>
					<td><a href="http://www.umassonline.net/student-services">Student Services</a></td>
					<td><a href="http://login.umassonline.net/">Student Login</a></td>
				</tr>
			</table>
		</div>
		<div class="content">

      <table cellspacing="0">
        <tr>
          <td class="left2col">
            <div class="breadcrumb"><a href="http://www.umassonline.net/">UMassOnline</a>&nbsp;&gt;&nbsp;UMassOnline | Amherst Login Page</div>
            <div class="head">
              <h1>UMass Amherst</h1>
              <h2>Blackboard Learn Login Page</h2>
            </div>

            <!-- start body -->
            <h3>Welcome to UMass Amherst and UMassOnline.</h3>
            <p>Through UMassOnline, UMass Amherst Continuing & Professional Education presents online courses on the Blackboard Learn learning management system.</p>
            <p>You must have an active IT Account NetID to log in. <a target="_blank" href="https://www.it.umass.edu/accounts/activate-your-account">Activate Your IT Account</a></p>
            <p>Online courses become available for access one week before the start date of the class.<br />
            </p>
            <loginUI:systemAnnouncements maxItems="5" />
            
            <table width="100%" cellspacing="10" cellpadding="0" border="0" align="center">
              <tbody>
                <tr>
                  <td width="45%" valign="top">             
                    <div class="loginbox">
                      <h3 class="center-txt">FALL Courses - Login Here</h3>
                      <loginUI:errorMessage />
                      <form method="get" action="https://uma-uits.umassonline.net/webapps/login/">
                        <p class="center-txt"><button type="submit">Login</button></p>
                      </form>
                    </div>
                  </td>
                  <td width="45%" valign="top">              
                    <div class="loginbox">
                      <h3 class="center-txt">WINTER &amp; SPRING Courses - Login Here</h3>
                      <form method="get" action="https://umol.umass.edu">
                        <p class="center-txt"><button type="submit">Login</button></p>
                      </form>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="center-txt"><a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password" target="_blank">About Your NetID and Password</a></p>
            <p class="center-txt"><a href="https://www.it.umass.edu/support/accounts/understand-your-netid-password#Your%20IT%20Account%20Password" target="_blank">Forgot Your Password?</a></p>
            <p>For specific questions pertaining to registration in courses presented by UMass Amherst Continuing &amp; Professional Education, please email: <a href="mailto:regoff@cpe.umass.edu">regoff@cpe.umass.edu</a>.</p>
            <p>Materials used in connection with a course may be subject to copyright protection.</p>
            <!-- end body -->
          </td>
          <td class="rightcol">
            <div class="block">
              <h3>Need Technical Support?</h3>
              <p>Please visit the Help Desk for Self-Help and Contact information:</p>
              <p><a href="http://supportcenter.embanet.com/uma" target="_blank">Support Center</a></p>
            </div>
            <div class="block">
              <h3>Can't find something?</h3>
              <p><a href="http://www.umassonline.net/contact-us"><img height="38" alt="UMass Online - Can't find something?" width="180" border="0" src="/bbcswebdav/library/login/uma/images/buttons/need-help.jpg" /></a></p>
            </div>
          </td>
        </tr>
      </table>      
     
    </div>
    <div class="footer">
      <div class="footlinks">
        <a href="http://www.umassonline.net/copyright">Copyright Compliance</a> |
        <a href="http://www.umassonline.net/privacy-policy">Privacy Policy</a> |
        <a href="http://www.umassonline.net/sitemap">Site Map</a> | 
        <a href="http://www.umassonline.net/technical-support-and-requirements">Site Requirements</a> |
        <a href="http://www.umassonline.net/contact-us">Contact Us</a>
      </div>
      <div class="footdisclaimer">        
        This is an <a href="http://www.umassonline.net/official">official</a> page/publication of the University of Massachusetts.
        &copy;2015 University of Massachusetts.
      </div>
      <div class="footsites">
        <a href="http://www.umass.edu">UMass Amherst</a> |
        <a href="http://www.umb.edu">UMass Boston</a> |
        <a href="http://www.umassd.edu">UMass Dartmouth</a> |
        <a href="http://www.uml.edu">UMass Lowell</a> |
        <a href="http://www.umassmed.edu">UMass Worcester</a> |
        <a href="http://www.umassclub.com">UMass Club</a> |
        <a href="http://www.massachusetts.edu">UMass System</a>
      </div>
    </div>
  </div>
</div>

<bbNG:cssBlock>
<link rel="stylesheet" type="text/css" href="/bbcswebdav/library/login/uma/css/styles.css" />
<style type="text/css">
tr:nth-child(2n) {
    background-color: transparent;
}
div.popup {
	height: 380px;
}
div.loginbox {
  height: 120px;
}
.center-txt {
  text-align: center;
}
</style>
</bbNG:cssBlock>

<bbNG:jsBlock>
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

</bbNG:genericPage>