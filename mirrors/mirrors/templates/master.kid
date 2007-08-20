<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<?python import sitetemplate ?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#" py:extends="sitetemplate">
  <head py:match="item.tag=='{http://www.w3.org/1999/xhtml}head'" py:attrs="item.items()">
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" py:replace="''"/>
    <title py:replace="''">Your title goes here</title>
    <link rel="stylesheet" type="text/css" media="all" href="/static/css/fedora.css" />
    <link rel="stylesheet" type="text/css" media="all" href="/static/css/style.css" />
    <!--[if lt IE 7]>
    <style type="text/css">
      #wrapper
      {
      height: 100%;
      }
    </style>
    <![endif]-->
    <style type="text/css">
      #content td.label, #content table th
      {
          text-align: right;
      } 

      #content td.label, #content table th
      {
        text-align: right;
      }

      #content table th, #content table td
      {
        background: none;
        border: none;
        width: auto;
        vertical-align: top;
      }
    </style>
  </head>
  <body py:match="item.tag=='{http://www.w3.org/1999/xhtml}body'" py:attrs="item.items()">
    <div id="wrapper">
      <div id="head">
        <h1><a href="http://fedoraproject.org/index.html">Fedora</a></h1>
      </div>
      <div id="content">
        <div id="menu">
          <div id="welcome">
            <span py:if="tg.config('identity.on',False) and not 'logging_in' in locals()">
              <span py:if="not tg.identity.anonymous">Welcome ${tg.identity.user.display_name}.</span>
            </span>
          </div>
          <div id="menu_links" >
            <a href="${tg.url('/')}">Main</a>
            <span py:if="tg.config('identity.on',False) and not 'logging_in' in locals()">
              <span py:if="tg.identity.anonymous">
                <a href="${tg.url('/login')}">Login</a>
              </span>
              <span py:if="not tg.identity.anonymous">
                <a href="${tg.url('/logout')}">Logout</a>
              </span>
            </span>	
          </div>
          <div py:if="tg_flash" class="notice">
            <div py:if="not tg_flash.startswith('Error:')" py:replace="tg_flash" />
            <div py:if="tg_flash.startswith('Error:')" py:content="tg_flash" class="error_flash"></div>
          </div>
        </div>
        <div py:replace="[item.text]+item[:]"/>
      </div>
    </div>
    <div id="bottom">
      <div id="footer">
        <p class="copy">
        Copyright &copy; 2007 Red Hat, Inc. and others.  All Rights Reserved.
        Please send any comments or corrections to the <a href="mailto:webmaster@fedoraproject.org">websites team</a>.
        </p>
        <p class="disclaimer">
        The Fedora Project is maintained and driven by the community and sponsored by Red Hat.  This is a community maintained site.  Red Hat is not responsible for content.
        </p>
        <ul>

          <li class="first"><a href="http://fedoraproject.org/wiki/Legal">Legal</a></li>
          <li><a href="http://fedoraproject.org/wiki/Legal/TrademarkGuidelines">Trademark Guidelines</a></li>
        </ul>
      </div>
    </div>
  </body>
</html>
