<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>jQuery ComboBox</title>
<script src="resources/plugins/jquery/jquery.min.js"></script>
	
<script src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>   
<style>
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.chartMenu {
	width: 100vw;
	height: 40px;
	background: #1A1A1A;
	color: rgba(54, 162, 235, 1);
}

.chartMenu p {
	padding: 10px;
	font-size: 20px;
}

.chartCard {
	width: 100vw;
	height: calc(100vh - 40px);
	background: rgba(54, 162, 235, 0.2);
	display: flex;
	align-items: center;
	justify-content: center;
}

.chartBox {
	width: 400px;
	padding: 20px;
	border-radius: 20px;
	border: solid 3px rgba(54, 162, 235, 1);
	background: white;
}

#area {
	position: relative; /* absolute는 부모가 relative일 때 부모를 따라간다. */
	width: 450px;
	height:217px;
	/* padding-bottom: 56.25%; /* 16:9 비율 */ */ 
}

#video {
	position: absolute;
	width: 100%; /* 부모에 맞게 꽉 채운다. */
	height: 100%;
}

</style>
 
</head>
<body>


	<div class="chartCard">
		<div class="chartBox">
			<canvas id="DChart" style="width: 353px;  height: 430px; display:block;"></canvas>
		</div>
	</div>
	
	<script>
		setTimeout(function(){
			location.reload();
		}, 50000);
	</script>
	
	 <script>
	let selectedDatasetIndex = undefined;
	let selectedIndex = undefined;
	

	// setup 
	let data = {
			labels: ['road', 'sidewalk', 'building', 'wall', 'fence', 'pole', 'traffic light', 'traffic sign', 'vegetation', 'terrain', 'sky'],
		    datasets: [{
			    label: 'Stuff Accuracy',
	    	    data: [80, 95, 70, 66, 90, 98, 30,50,70,77,90],
	        	backgroundColor: [
		          'rgba(255, 26, 104, 0.2)',
		          'rgba(54, 162, 235, 0.2)',
		          'rgba(255, 206, 86, 0.2)',
		          'rgba(75, 192, 192, 0.2)',
		          'rgba(153, 102, 255, 0.2)',
		          'rgba(200, 159, 64, 0.2)',
		          'rgba(102, 159, 64, 0.2)',
		          'rgba(55, 159, 64, 0.2)',
		          'rgba(5, 159, 64, 0.2)',
		          'rgba(45, 159, 64, 0.2)',
		          'rgba(0, 0, 0, 0.2)'
		        ],
		        borderColor: [
			          'rgba(255, 26, 104, 1)',
			          'rgba(54, 162, 235, 1)',
			          'rgba(255, 206, 86, 1)',
			          'rgba(75, 192, 192, 1)',
			          'rgba(153, 102, 255, 1)',
			          'rgba(200, 159, 64, 1)',
			          'rgba(102, 159, 64, 1)',
			          'rgba(55, 159, 64, 1)',
			          'rgba(5, 159, 64, 1)',
			          'rgba(45, 159, 64, 1)',
			          'rgba(0, 0, 0, 1)'
		        ],
			    borderWidth: 1,
			    cutout: '70%',
			    borderRadius: 5,
			    offset: 10
	  	}]
	};		
	
	// clickLabel pugin block
 		let clickLabel = {
		id: 'clickLabel',
		afterDraw: (chart, args, options) => {
			const { ctx, chartArea: { width, height, top } } = chart;
			
			
			
			if(selectedDatasetIndex >= 0) {
				console.log(chart.data.datasets[selectedDatasetIndex].data[selectedIndex]);
				let sum = chart._metasets[selectedDatasetIndex].total;
				let value = chart._metasets[selectedDatasetIndex]._parsed[selectedIndex];
				let color = chart.data.datasets[selectedDatasetIndex].borderColor[selectedIndex];
				let percentage = value / sum * 100;
				let accuracy = chart.data.datasets[selectedDatasetIndex].data[selectedIndex];

				ctx.save();
				ctx.font = 'bolder 60px Arial';
				ctx.fillStyle = color;
				ctx.textAlign = 'center';
				ctx.textBaseline = 'middle';
				ctx.fillText(accuracy + '%', width/2, height/2 + top);
				ctx.restore();
			}
		}
	} 
	
	// config 
	let d_config = {
		type: 'doughnut',
	    data:data,
	    options: {
			mainTainAspectRatio: false,
				plugins: {
				legend: {
					display: true,
					position: 'bottom'
				}
	 		},
			onClick(click, element, chart) {
				//console.log(element[0].datasetIndex)
				if(element[0]) {
					selectedDatasetIndex = element[0].datasetIndex;
					selectedIndex = element[0].index;
					chart.draw();
				}
			}
		},
		plugins: [clickLabel]
	};
	
	// render init block
	let DChart = new Chart(
	   document.getElementById('DChart'),
	   d_config
	);
	</script>
</body>
</html>