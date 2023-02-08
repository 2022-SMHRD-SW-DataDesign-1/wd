<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>jQuery ComboBox</title>
<link rel="stylesheet"
	href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.base.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://www.jqwidgets.com/public/jqwidgets/styles/jqx.energyblue.css"
	type="text/css" />
<script type="text/javascript"
	src="https://www.jqwidgets.com/public/jqwidgets/jqx-all.js"></script>
<!--     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="../../jqwidgets/jqxlistbox.js"></script>-->
<style type="text/css">
li {
	list-style: none;
}

       /* form */
/*        #Div{
            position: absolute;
            visibility: hidden;
            font-size: 12px;
            background-color: whitesmoke;

            width: 200px;
        }
       ul{
            border: 1px solid black;
            height: 100%;
            margin: 0px;
            padding: 0px;
        }
        li{
            list-style: none;
            border : 1px solid white;

            display: flex;
        }

        li * {
            border:  1px solid pink;
        }

        .section1{
            flex-grow : 1;
        }

        .section2 {
            flex-grow: 9;
        } */
</style>
</head>
<body>

	<!-- <div class="input_group"
		style="width: 100px; height: 553px; margin-top: 10%;">
		<ul>
			<li><input type='checkbox' name='object' value='0'
				style="width: 20px; height: 20px;" /> road</li>
			<li><input type='checkbox' name='object' value='1'
				style="width: 20px; height: 20px;" /> sidewalk</li>
			<li><input type='checkbox' name='object' value='2'
				style="width: 20px; height: 20px;" /> building</li>
			<li><input type='checkbox' name='object' value='3'
				style="width: 20px; height: 20px;" /> wall</li>
			<li><input type='checkbox' name='object' value='4'
				style="width: 20px; height: 20px;" /> fence</li>
			<li><input type='checkbox' name='object' value='5'
				style="width: 20px; height: 20px;" /> pole</li>
			<li><input type='checkbox' name='object' value='6'
				style="width: 20px; height: 20px;" /> traffic light</li>
			<li><input type='checkbox' name='object' value='7'
				style="width: 20px; height: 20px;" /> traffic sign</li>
			<li><input type='checkbox' name='object' value='8'
				style="width: 20px; height: 20px;" /> vegetation</li>
			<li><input type='checkbox' name='object' value='9'
				style="width: 20px; height: 20px;" /> terrain</li>
			<li><input type='checkbox' name='object' value='10'
				style="width: 20px; height: 20px;" /> sky</li>
			<li><input type='checkbox' name='object' value='11'
				style="width: 20px; height: 20px;" /> person</li>
			<li><input type='checkbox' name='object' value='12'
				style="width: 20px; height: 20px;" /> rider</li>
			<li><input type='checkbox' name='object' value='13'
				style="width: 20px; height: 20px;" /> car</li>
			<li><input type='checkbox' name='object' value='14'
				style="width: 20px; height: 20px;" /> truck</li>
			<li><input type='checkbox' name='object' value='15'
				style="width: 20px; height: 20px;" /> bus</li>
			<li><input type='checkbox' name='object' value='16'
				style="width: 20px; height: 20px;" /> train</li>
			<li><input type='checkbox' name='object' value='17'
				style="width: 20px; height: 20px;" /> motorcycle</li>
			<li><input type='checkbox' name='object' value='18'
				style="width: 20px; height: 20px;" /> bicycle</li>
		</ul>

	</div> -->

	<form name="form1">
		<table cellpadding="0" cellspacing="0" style="cursor: pointer"
			onClick="multiSelect('OPEN')">
			<tr>
				<td align="center" width="200"
					style="border: 1px solid; font-size: 12px;">선택 객체</td>
				<td><input type="button" value="▼"></td>
			</tr>
		</table>

		<div id="Div"style="position: absolute; visibility: hidden; font-size: 12px;">
			<ul>
				<li><input type="checkbox" name="chk1" id="chk1">1</li>
				<li><input type="checkbox" name="chk2" id="chk2">2</li>
				<li><input type="checkbox" name="chk3" id="chk3">3</li>
				<li><input type="checkbox" name="chk4" id="chk4">4</li>
				<li><input type="checkbox" name="chk5" id="chk5">5</li>
				<li><input type="checkbox" name="chk6" id="chk6">6</li>
				<li><input type="checkbox" name="chk7" id="chk7">7</li>
			</ul>
			<div style="padding-top: 3px; text-align: right">
				<input type="button" value="확인" onClick="multiSelect('CLOSE')">
			</div>
		</div>
	</form>



	<!-- 다중체크박스  -->
	<script>
		function multiSelect(value) {
			if (value == "OPEN")
				Div.style.visibility = "visible";
			else
				Div.style.visibility = "hidden";
		}
	</script>
</body>
</html>