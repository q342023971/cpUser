<?php
// 获取客户端IP地址
function get_client_ip() {
    static $ip = NULL;
    if ($ip !== NULL) return $ip;
    if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
        $pos =  array_search('unknown',$arr);
        if(false !== $pos) unset($arr[$pos]);
        $ip   =  trim($arr[0]);
    }elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    }elseif (isset($_SERVER['REMOTE_ADDR'])) {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    // IP地址合法验证
    $ip = (false !== ip2long($ip)) ? $ip : '0.0.0.0';
    return $ip;
}
function getCheckboxValue($value)
{
	if($value)
		return 1;
	else
		return 0;
}
//记录系统日志
function systemLogs($username,$return,$action,$type,$group=GROUP_NAME)
{
	$data['username']=$username;
	$data['return']=$return;
	$data['time']=time();
	$data['ip']=get_client_ip();
	$data['action']=$action;
	$data['type']=$type;
	$data['group']=$group;
	$data['id']=M('SystemLogs')->add($data);
	if($type=='error')
	{
		$newSystemLogs=F('newSystemLogs');
		$newSystemLogs[$data['id']]=1;
		F('newSystemLogs',$newSystemLogs);
	}
}
//获取新错误日志个数
function getSystemLogs()
{
	$newSystemLogs=F('newSystemLogs');
	if($newSystemLogs)
	{
		return count($newSystemLogs);
	}else{
		return 0;
	}
}
//获取文件目录
function get_dir($dir)
{
	if(is_dir($dir))
	{
		$files = scandir($dir);
		foreach($files as $value)
		{
			if($value!='.' && $value!='..')
			{
				if(is_dir($dir.$value))
				{
					$dir_list[$value]=get_dir($dir.$value.'/');
				}else{
					$dir_list[]=$value;
				}
			}
		}
		return $dir_list;
	}else{
		return false;
	}
}
//获取扩展目录
function get_expansion_dir($expansion,$dir=null)
{
	if(!$dir) $dir=CONFIG_PATH;
	foreach($expansion as $key=>$value)
	{
		if($value!='config.php')
		{
			$expansion_list[$key]['dir']=$value;
			if(is_dir($dir.$key))
			{
				$expansion_list[$key]['dir']=get_expansion_dir($expansion[$key],$dir.$key.'/');
				if(is_file($dir.$key.'/config.php'))
				{
					// 加载扩展设置
					$expansion_list[$key]['config'] = include $dir.$key.'/config.php';
				}
			}
			
		}
	}
	return $expansion_list;
}
?>