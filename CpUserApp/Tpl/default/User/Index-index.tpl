<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>{cp:&WEB_LTD} - {cp:%MEMBER_CENTER}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/charisma-app.css" rel="stylesheet">
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/jquery.noty.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/noty_theme_default.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/elfinder.min.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/elfinder.theme.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/uploadify.css' rel='stylesheet'>
    <link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/img/favicon.ico">

</head>

<body>
    <include file="Public-topbar" />
<div class="ch-container">
    <div class="row">
        
        <include file="Public-menu" />

        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>您的系统不支持或者没启用<a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    无法使用本系统。</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="{cp::U('Index/index')}">{cp:%ACTION_USER_INDEX_INDEX}</a>
        </li>
    </ul>
</div>
<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-info-sign"></i> {cp:%TXT_WELCOME}</h2>
            </div>
            <div class="box-content row">
                <div class="col-lg-7 col-md-12">
                    <h1>{cp:#userNAME} <br>
                        <small>上次登录IP：{cp:#lastloginip}，上次登录时间：{cp:$Think.cookie.lastlogindate|date="Y-m-d H:i:s",###}</small>
                    </h1>
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</div><!--/fluid-row-->

    <hr>

    <include file="Public-Ufooter" />

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/moment/min/moment.min.js'></script>
<script src='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/charisma-master/js/charisma.js"></script>


</body>
</html>