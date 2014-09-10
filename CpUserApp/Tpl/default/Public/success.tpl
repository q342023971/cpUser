<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html>
<head>
<title>{cp:$msgTitle}</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv='Refresh' content='{cp:$waitSecond};URL={cp:$jumpUrl}'>
<style type="text/css">
BODY {
	BACKGROUND: #fff; MARGIN: 200px auto; FONT: 14px/150% Verdana, Georgia, Sans-Serif; COLOR: #000; TEXT-ALIGN: center
}
A:link {
	COLOR: #2c4c78; TEXT-DECORATION: none
}
A:visited {
	COLOR: #2c4c78; TEXT-DECORATION: none
}
A:hover {
	COLOR: #2c4c78; TEXT-DECORATION: none
}
A:active {
	COLOR: #2c4c78; TEXT-DECORATION: none
}
H1 {
	PADDING-RIGHT: 4px; PADDING-LEFT: 4px; FONT-SIZE: 14px; BACKGROUND: #eee; PADDING-BOTTOM: 4px; MARGIN: 0px; PADDING-TOP: 4px; BORDER-BOTTOM: #84b0c7 1px solid
}
DIV {
	BORDER-RIGHT: #84b0c7 1px solid; BORDER-TOP: #84b0c7 1px solid; BACKGROUND: #e5eef5; MARGIN: 0px auto; BORDER-LEFT: #84b0c7 1px solid; WIDTH: 500px; BORDER-BOTTOM: #84b0c7 1px solid
}
P {
	PADDING-RIGHT: 15px; PADDING-LEFT: 15px; PADDING-BOTTOM: 15px; MARGIN: 0px; PADDING-TOP: 15px
}
</style>
</head>
<body>
<div>
<H1>{cp:$msgTitle}</H1>
<p>
	<present name="message" ><font style="color:<eq name="status" value="1">blue<else/>red</eq>">{cp:$message}</font><br/></present>
	<present name="error" ><font style="color:red">{cp:$error}</font></present>
	<present name="closeWin" >System will <span style="color:blue;font-weight:bold">{cp:$waitSecond}</span> Seconds automatically shut down, you do not want to wait, just click <a href="{cp:$jumpUrl}">Here</a> Close</present>
	<notpresent name="closeWin" >System will <span style="color:blue;font-weight:bold">{cp:$waitSecond}</span> Seconds after the auto-jump, if you do not want to wait, just click <a href="{cp:$jumpUrl}">Here</a> jump</notpresent>
</p>
</div>
</body>
</html>