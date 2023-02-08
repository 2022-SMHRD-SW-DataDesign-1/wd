<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>jQuery ComboBox</title>
    <link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.base.css" type="text/css" />
    <link rel="stylesheet" href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.energyblue.css" type="text/css" />
    <script type="text/javascript" src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
<!--     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxlistbox.js"></script>-->
    
</head>
<body>

<h2 align=center>Auto Video Stream to Still Image</h2>

<video  id="myVideo" width="400" height="300" style="border: 1px solid #ddd;"></video>
<canvas id="myCanvas" width="160" height="140" style="border: 1px solid #ddd;"></canvas><br>

<input type=button value="get Video" onclick="{getVideo()}">
<input type=button value="get Pic" onclick="{takeSnapshot()}"><br>
Take snapshot every <input type=number id="myInterval"  value="3000"> milliseconds
<input type=button value="Auto" onclick="{takeAuto()}">

<script type="text/javascript">
var myVideoStream = document.getElementById('myVideo')     // make it a global variable
var myStoredInterval = 0

function getVideo(){
navigator.getMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
navigator.getMedia({video: true, audio: false},
                   
	function(stream) {
	  myVideoStream.srcObject = stream   
	  myVideoStream.play();
	}, 
                   
	function(error) {
	  alert('webcam not working');
	});
}

function takeSnapshot() {
	var myCanvasElement = document.getElementById('myCanvas');
	var myCTX = myCanvasElement.getContext('2d');
	myCTX.drawImage(myVideoStream, 0, 0, myCanvasElement.width, myCanvasElement.height);
}

function takeAuto() {
	takeSnapshot() // get snapshot right away then wait and repeat
	clearInterval(myStoredInterval)
	myStoredInterval = setInterval(function(){                                                                                         
		takeSnapshot()
	}, document.getElementById('myInterval').value);        
}


</script>





<!-- <div id='jqxComboBox'></div>
<div>
   <input style="margin-top: 20px;" type="button" id='jqxButton' value="확인하기" /> 
</div>

 <form>
       <select name = "Appia" multiple size=20>
          <option value = "Python" selected>파이썬</option>
          <option value = "Python" >파이썬</option>
          <option value = "Python" >파이썬</option>
          <option value = "MATLAB">매트랩</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
          <option value = "HTML">HTML</option>
       </select>
    </form>



        <script type="text/javascript">
        var source = [
            "안녕",
            "지수야",
            "나는",
            "가연",
            "승호바보",
            "예쁜 이승호",
            "기염둥이 지슈",
            "지뚜",
            "메롱"];

        // Create a jqxComboBox
        $("#jqxComboBox").jqxComboBox({
            source: source,
            theme: 'Material',
            width: '200px',
            height: '25px',
            checkboxes: true
        });
        $("#jqxButton").jqxButton({
            theme:'energyblue'
        });

       $('#jqxButton').on('click', function () {
            $("#jqxComboBox").jqxComboBox('checkItem',"Breve");
        });
        </script>
 -->
</body>
</html>