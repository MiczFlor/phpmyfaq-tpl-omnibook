<!doctype html>
<!--[if IE 9 ]> <html lang="{metaLanguage}" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{metaLanguage}" class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">

    <title>{title}</title>
    <base href="{baseHref}">

    <meta name="description" content="{metaDescription}">
    <meta name="keywords" content="{metaKeywords}">
    <meta name="author" content="Micz Flor" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="application-name" content="phpMyFAQ {phpmyfaqversion}">
    <meta name="robots" content="{metaRobots}">
    <meta name="revisit-after" content="7 days">
    <meta name="apple-itunes-app" content="app-id=977896957">

    <!-- Share on Facebook -->
    <meta property="og:title" content="{title}">
    <meta property="og:description" content="{metaDescription}">
    <meta property="og:image" content="">

    <!--link rel="stylesheet" href="{baseHref}assets/template/{tplSetName}/css/{stylesheet}.css?v=1"-->
    <link rel="stylesheet" href="{baseHref}assets/template/{tplSetName}/css/bootstrap.min.css?v=1">
    <link rel="stylesheet" href="{baseHref}assets/template/{tplSetName}/css/sticky-footer.css?v=1">
    <link rel="stylesheet" href="{baseHref}assets/template/{tplSetName}/css/bootstraptheme.css?v=1">
    <link rel="shortcut icon" href="{baseHref}assets/template/{tplSetName}/favicon.ico">
    <link rel="apple-touch-icon" href="{baseHref}assets/template/{tplSetName}/apple-touch-icon.png">
    <link rel="canonical" href="{currentPageUrl}">

    <script src="{baseHref}assets/js/modernizr.min.js"></script>
    <script src="{baseHref}assets/js/phpmyfaq.min.js"></script>

    <link rel="alternate" title="News RSS Feed" type="application/rss+xml" href="{baseHref}feed/news/rss.php">
    <link rel="alternate" title="TopTen RSS Feed" type="application/rss+xml" href="{baseHref}feed/topten/rss.php">
    <link rel="alternate" title="Latest FAQ Records RSS Feed" type="application/rss+xml" href="{baseHref}feed/latest/rss.php">
    <link rel="alternate" title="Open Questions RSS Feed" type="application/rss+xml" href="{baseHref}feed/openquestions/rss.php">
    <link rel="search" type="application/opensearchdescription+xml" title="{metaTitle}" href="{opensearch}">

    <script>
        if (self === top) {
            document.documentElement.style.display = 'block';
        } else {
            top.location = self.location;
        }
    </script>
    <style> 
    html {
        display:none;
    }
    .navbar-brand img {
        height: 100%;
    }
    </style>
</head>
<body dir="{dir}">

<header>


              <nav class="navbar navbar-default">
                <div class="container">
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="assets/template/omnibook/img/logo-header.png" alt="Logo" class="img-responsive"></a>              
                    <!--a id="logo" title="{header}" href="{faqHome}">
                        
                    </a-->
                  </div>

                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <form class="navbar-form navbar-left" role="search" id="search" action="{writeSendAdress}" method="get">
                    <input type="text" class="searchfield typeahead " name="search" id="searchbox" autocomplete="off" placeholder="{searchBox} ...">
                    <button class="btn btn-default" type="submit" aria-label="{searchBox}">Submit</button>
                    <input type="hidden" name="action" value="search">
                </form>
                    <!--form class="navbar-form navbar-left" role="search">
                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                      </div>
                      <button type="submit" class="btn btn-default">Submit</button>
                    </form-->
                    <ul class="nav navbar-nav">
                        <!--li class="{activeSearch}">{msgSearch}</li>
                        <li class="{activeAllCategories}">{allCategories}</li>
                        <li class="{activeAddContent}">{msgAddContent}</li>
                        <li class="{activeAddQuestion}">{msgQuestion}</li>
                        <li class="{activeOpenQuestions}">{msgOpenQuestions}</li-->
                    

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                {msgLoginUser}
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                [notLoggedIn]
                                <li>{msgRegisterUser}</li>
                                <li>{msgLoginUser}</li>
                                [/notLoggedIn]
                                [userloggedIn]
                                <li>{msgUserControlDropDown}</li>
                                <li>{msgUserControl}</li>
                                <li>{msgLogoutUser}</li>
                                [/userloggedIn]
                            </ul>
                        </li>
                        
                    </ul>
                  </div>
                </div>
              </nav>

</header>

<div class="container">
  <div class="row">
    <div class="col">
        <ol class="breadcrumb">
            [breadcrumb]
            {breadcrumbHeadline}
            [/breadcrumb]
        </ol>
    </div>
  </div>
</div>


    <div class="container">
        <div class="row">
            <div class="col-md-7 ">

                {writeContent}
                
            </div>
            <div class="col-md-1 ">
            </div>
            <aside class="col-md-4 ">
                <!--header><h3>Navigation</h3></header-->
                <ul class="nav nav-tabs nav-stacked">
                    <li class="{activeSearch}">{msgSearch}</li>
                    <li class="{activeAllCategories}">{allCategories}</li>
                    <li class="{activeAddContent}">{msgAddContent}</li>
                    <li class="{activeAddQuestion}">{msgQuestion}</li>
                    <li class="{activeOpenQuestions}">{msgOpenQuestions}</li>
                </ul>

                {rightBox}

                [stickyFaqs]
                <div class="">
                    <header>
                        <h3>{stickyRecordsHeader}</h3>
                    </header>
                    <div class="">
                        <ul class="">
                            {stickyRecordsList}
                        </ul>
                    </div>
                </div>
                [/stickyFaqs]

            </aside>
        </div>
    </div>




<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <ul class="list-inline">
                        <li>{userOnline}</li>
                        <li>{faqOverview}</li>
                        <li>{showSitemap}</li>
                        <li>{msgGlossary}</li>
                        <li>{msgContact}</li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <form action="{writeLangAdress}" method="post" class="pull-right" accept-charset="utf-8">
                        {switchLanguages}
                        <input type="hidden" name="action" value="" />
                    </form>
                </div>
            </div>
        </div>

    <!--div class="pmf-wrapper copyright">
        <div class="container">
            <div class="pull-right">
                {copyright}
            </div>
        </div>
    </div-->

    [debugMode]
    <div class="container debug-mode">
        <h3>DEBUG INFORMATION</h3>
        <hr>
        <h4>EXCEPTIONS</h4>
        {debugExceptions}
        <hr>
        <h4>DATABASE QUERIES</h4>
        {debugQueries}
    </div>
    [/debugMode]

</footer>

<script>
    $('.topten').tooltip();
    $('.latest-entries').tooltip();
    $('.sticky-faqs').tooltip();
</script>

</body>
</html>
