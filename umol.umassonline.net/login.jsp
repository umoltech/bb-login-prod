<%@ include file="/webapis/ui/doctype.jspf" %>

<%@ taglib uri="/bbNG" prefix="bbNG" %>
<%@ taglib uri="/bbUI" prefix="bbUI" %>
<%@ taglib uri="/loginUI" prefix="loginUI" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="productName" value="${ loginUI:getProductName() }" />

<bbNG:genericPage authentication="N" wrapper="false" onLoad="loadLoginPage()" bodyClass="login-page">
   
  <%@ include file="/webapis/ui/cookie-disclosure-login.jspf"%>

  <bbNG:jsBlock>	
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">	
      jQuery.noConflict();
      
      var loginpages = {
        'dev90.umassonline.net': {				
          'uma-dev.umassonline.net': 'UMass Amherst',
          'umb-dev.umassonline.net': 'UMass Boston',
          'umd-dev.umassonline.net': 'UMass Dartmouth',
          'uml-dev.umassonline.net': 'UMass Lowell',
          'umassmed-dev.umassonline.net': 'UMass Medical School',				
          'ddslearning-dev.umassonline.net': 'Massachusetts Department of Developmental Services',
          'dese-dev.umassonline.net': 'Massachusetts Department of Elementary and Secondary Education (DESE)',
          'nciia-dev.umassonline.net': 'National Collegiate Inventors and Innovators Association (NCIIA)',				
          'springfieldurbanleague-dev.umassonline.net': 'Springfield Urban League',
          'umdi-learningsolutions-dev.umassonline.net': 'UMass Donahue Institute',
          'civicinitiative-dev.umassonline.net': 'UMDI Civic Initiative'				
        },
        'tst90.umassonline.net': {
          'uma-tst.umassonline.net': 'UMass Amherst',
          'umb-tst.umassonline.net': 'UMass Boston',
          'umd-tst.umassonline.net': 'UMass Dartmouth',
          'uml-tst.umassonline.net': 'UMass Lowell',
          'umassmed-tst.umassonline.net': 'UMass Medical School',				
          'ddslearning-tst.umassonline.net': 'Massachusetts Department of Developmental Services',
          'dese-tst.umassonline.net': 'Massachusetts Department of Elementary and Secondary Education (DESE)',
          'nciia-tst.umassonline.net': 'National Collegiate Inventors and Innovators Association (NCIIA)',				
          'springfieldurbanleague-tst.umassonline.net': 'Springfield Urban League',
          'umdi-learningsolutions-tst.umassonline.net': 'UMass Donahue Institute',
          'civicinitiative-tst.umassonline.net': 'UMDI Civic Initiative'				
        },
        'mycourses.umassonline.net': {
          'uma.umassonline.net': 'UMass Amherst',
          'umb.umassonline.net': 'UMass Boston',
          'umassd.umassonline.net': 'UMass Dartmouth',
          'uml.umassonline.net': 'UMass Lowell',
          'umassmed.umassonline.net': 'UMass Medical School',				
          'ddslearning.umassonline.net': 'Massachusetts Department of Developmental Services',
          'dese.umassonline.net': 'Massachusetts Department of Elementary and Secondary Education (DESE)',
          'nciia.umassonline.net': 'National Collegiate Inventors and Innovators Association (NCIIA)',				
          'springfieldurbanleague.umassonline.net': 'Springfield Urban League',
          'umdi-learningsolutions.umassonline.net': 'UMass Donahue Institute',
          'civicinitiative.umassonline.net': 'UMDI Civic Initiative'				
        },
        'umol.umassonline.net': {
          'uma.umassonline.net': 'UMass Amherst',
          'umb.umassonline.net': 'UMass Boston',
          'umassd.umassonline.net': 'UMass Dartmouth',
          'uml.umassonline.net': 'UMass Lowell',
          'lowell.umassonline.net': 'UMass Lowell Day',
          'umassmed.umassonline.net': 'UMass Medical School',				
          'lei.umassonline.net': 'Lean Enterprise Institute',
          'lhaboardtraining.umassonline.net': 'Local Housing Authority Board Member Training Program',
          'ddslearning.umassonline.net': 'Massachusetts Department of Developmental Services',
          'dese.umassonline.net': 'Massachusetts Department of Elementary and Secondary Education (DESE)',
          'nciia.umassonline.net': 'National Collegiate Inventors and Innovators Association (NCIIA)',				
          'springfieldurbanleague.umassonline.net': 'Springfield Urban League',
          'umdi-learningsolutions.umassonline.net': 'UMass Donahue Institute',
          'udiscovering.umassonline.net': 'U Discovering',
          'civicinitiative.umassonline.net': 'UMDI Civic Initiative'				
        }
      };
      
      function loadLoginPage() {
        if (top != self) {
          top.location.replace(self.location.href);
        }
      }
      
      function getJumpBox() {
        var current_host = window.location.hostname;
        var host_name = window.location.hostname.toLowerCase();
        var path_name = window.location.pathname.toLowerCase();
        var query_string = window.location.search;
        var jump_box = '';
        
        if (loginpages[host_name] != 'undefined') {
          jump_box += '<div class="head">Choose Your Campus:</div>';
          
          for (var domain in loginpages[host_name]) {
            jump_box += '<div class="brand">';
            jump_box += '<a href="https://' + domain + path_name + query_string + '">';
            jump_box += loginpages[host_name][domain]
            jump_box += '</a>';
            jump_box += '</div>';
          }
          
          jQuery('#jumpBox').html(jump_box);
        }
      }
      
      jQuery(document).ready( function() {
        getJumpBox();
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
        width: 420px; 
        margin: 0 auto 40px auto; 
        text-align: center; 
        border: 1px solid #999;
      }
      
      #jumpBox .head {
        padding: 10px;
        text-align: center;
        background-color: #ccc;
        font-weight: bold;			
      }
      
      #jumpBox .brand {
        padding: 7px 10px;
        text-align: center;
        border-bottom: 1px solid #999;
      }
      
      #jumpBox .brand:hover {
        background-color: #eeeeee;
      }
      
      #jumpBox .brand a {
        text-decoration: none;
      }
      
      #jumpBox .brand:last-child {
        border-bottom: none;
      }
      
      .login-page #copyright {
        position: relative !important;
      }
    </style>
  </bbNG:cssBlock>

  <div id="loginPageContainer">
    <div id="loginPane">

      <div id="loginContainer">
        <div id="loginTitle" class="clearfix">
          <h1>UMassOnline Blackboard Learn Login</h1>
        </div>

        <div id="loginLang" class="clearfix">
          <loginUI:localePicker />
        </div>

        <div class="clearfix loginBody">
          <loginUI:errorMessage />
          <div id="jumpBox"></div>

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