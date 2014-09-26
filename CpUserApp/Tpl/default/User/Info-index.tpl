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
        <li>
            <a href="{cp::U('Info/index')}">会员信息</a>
        </li>
    </ul>
</div>

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> 会员信息</h2>
            </div>
            <div class="box-content">
                <div class="control-group">
                    <label class="control-label" for="selectError">用户名：{cp:#userNAME}</label>
                </div>
                <div class="control-group">
                    <label class="control-label" for="selectError1">Multiple Select / Tags</label>

                    <div class="controls">
                        <select id="selectError1" multiple class="form-control" data-rel="chosen">
                            <option>Option 1</option>
                            <option selected>Option 2</option>
                            <option>Option 3</option>
                            <option>Option 4</option>
                            <option>Option 5</option>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="selectError2">Group Select</label>

                    <div class="controls">
                        <select data-placeholder="Your Favorite Football Team" id="selectError2" data-rel="chosen">
                            <option value=""></option>
                            <optgroup label="NFC EAST">
                                <option>Dallas Cowboys</option>
                                <option>New York Giants</option>
                                <option>Philadelphia Eagles</option>
                                <option>Washington Redskins</option>
                            </optgroup>
                            <optgroup label="NFC NORTH">
                                <option>Chicago Bears</option>
                                <option>Detroit Lions</option>
                                <option>Green Bay Packers</option>
                                <option>Minnesota Vikings</option>
                            </optgroup>
                            <optgroup label="NFC SOUTH">
                                <option>Atlanta Falcons</option>
                                <option>Carolina Panthers</option>
                                <option>New Orleans Saints</option>
                                <option>Tampa Bay Buccaneers</option>
                            </optgroup>
                            <optgroup label="NFC WEST">
                                <option>Arizona Cardinals</option>
                                <option>St. Louis Rams</option>
                                <option>San Francisco 49ers</option>
                                <option>Seattle Seahawks</option>
                            </optgroup>
                            <optgroup label="AFC EAST">
                                <option>Buffalo Bills</option>
                                <option>Miami Dolphins</option>
                                <option>New England Patriots</option>
                                <option>New York Jets</option>
                            </optgroup>
                            <optgroup label="AFC NORTH">
                                <option>Baltimore Ravens</option>
                                <option>Cincinnati Bengals</option>
                                <option>Cleveland Browns</option>
                                <option>Pittsburgh Steelers</option>
                            </optgroup>
                            <optgroup label="AFC SOUTH">
                                <option>Houston Texans</option>
                                <option>Indianapolis Colts</option>
                                <option>Jacksonville Jaguars</option>
                                <option>Tennessee Titans</option>
                            </optgroup>
                            <optgroup label="AFC WEST">
                                <option>Denver Broncos</option>
                                <option>Kansas City Chiefs</option>
                                <option>Oakland Raiders</option>
                                <option>San Diego Chargers</option>
                            </optgroup>
                        </select>
                    </div>
                </div>
                <br>


                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="">
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                </div>
                <div class="checkbox disabled">
                    <label>
                        <input type="checkbox" value="" disabled>
                        Option two is disabled
                    </label>
                </div>

                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                        Option two can be something else and selecting it will deselect option one
                    </label>
                </div>
                <div class="radio disabled">
                    <label>
                        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
                        Option three is disabled
                    </label>
                </div>

                <label class="checkbox-inline">
                    <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
                </label>

                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
                </label>
                <label class="radio-inline">
                    <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
                </label>

                <br>
                <br>
                <br>

                <div class="form-group has-success col-md-4">
                    <label class="control-label" for="inputSuccess1">Input with success</label>
                    <input type="text" class="form-control" id="inputSuccess1">
                </div>
                <div class="form-group has-warning col-md-4">
                    <label class="control-label" for="inputWarning1">Input with warning</label>
                    <input type="text" class="form-control" id="inputWarning1">
                </div>
                <div class="form-group has-error col-md-4">
                    <label class="control-label" for="inputError1">Input with error</label>
                    <input type="text" class="form-control" id="inputError1">
                </div>

                <form class="form-inline" role="form">
                    <div class="form-group has-success has-feedback">
                        <label class="control-label" for="inputSuccess4">Input with success</label>
                        <input type="text" class="form-control" id="inputSuccess4">
                        <span class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>
                </form>

                <br>
                <div class="input-group col-md-4">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                    <input type="text" class="form-control" placeholder="Username">
                </div>
            </div>
        </div>
    </div>
    <!--/span-->

</div><!--/row-->
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