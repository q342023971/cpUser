	<div class="navbar navbar-default" role="navigation">

        <div class="navbar-inner">
            <a class="navbar-brand" href="{cp::U('Index/index')}"><span>{cp:%MEMBER_CENTER}</span></a>

            <!-- user dropdown starts -->
            <div class="btn-group pull-right">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> {cp:#userNAME}</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="{cp::U('Public/loginOut')}">{cp:%ACTION_USER_PUBLIC_LOGOUT}</a></li>
                </ul>
            </div>
            <!-- user dropdown ends -->

            <div class="btn-group pull-right theme-container animated tada">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-tint"></i><span
                        class="hidden-sm hidden-xs"> {cp::C('LANG_'.LANG_SET)}</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" id="themes">
                    <li><a data-value="Simplified Chinese" href="{cp::U('Index/index?l=zh-cn')}"> {cp::C('LANG_zh-cn')}</a></li>
                    <li><a data-value="English" href="{cp::U('Index/index?l=en-us')}"> {cp::C('LANG_en-us')}</a></li>
                </ul>
            </div>

        </div>
    </div>