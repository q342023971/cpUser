<?php
/**
 * @package	Easycart
 * @version		3.0
 * @link			http://www.easycart.cn/
 * 修改：自来也
 */
define('CPWEB_ROOT', str_replace("\\", '/',dirname(__FILE__).'\\'));
define('THINK_PATH', CPWEB_ROOT.'Public/Core');
define('APP_NAME', 'CpUserApp');
define('APP_PATH', CPWEB_ROOT.'CpUserApp');
define('APP_DEBUG', true);
require(THINK_PATH.'/ThinkPHP.php');
App::run();
?> 
