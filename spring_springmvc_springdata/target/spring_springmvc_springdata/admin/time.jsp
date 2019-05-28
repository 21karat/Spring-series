<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	var c=0
	var t
	function timedCount(){
	   var temptextmin=document.getElementById('txt');
		hour = parseInt(c / 3600);// 小时数
		min = parseInt(c / 60);// 分钟数
		if(min>=60){
		    min=min%60
		}
		lastsecs = c % 60;
		temptextmin.value = hour + "时" + min + "分" + lastsecs + "秒"	
		c=c+1
		t=setTimeout("timedCount()",1000)
		document.getElementById('start').style.display = "none";   
		document.getElementById('end').style.display = ""; 
	}

	function stopCount(){
		clearTimeout(t)
		document.getElementById('start').style.display = "";   
		document.getElementById('end').style.display = "none"; 
	}
	function clearAll(){
		 c=0
		 document.getElementById('txt').value=  "0时" +  "0分" + "0秒"
		 clearTimeout(t)
		 document.getElementById('start').style.display ="";   
		 document.getElementById('end').style.display = "none"; 
	}
</script>
</head>
<body>
	<form>
		<input type="text" id="txt" value="0时0分0秒">
		<input type="button" value="开始计时！" id="start" onClick="timedCount()">
		<input type="button" value="停止计时！" style="display: none" id="end" onClick="stopCount()">
		<input type="button" value="清除" onClick="clearAll()">
	</form>
	<p>请点击上面的“开始计时”按钮来启动计时器。输入框会一直进行计时，从 0 开始。点击“停止计时”按钮可以终止计时。</p>
</body>
</html>
