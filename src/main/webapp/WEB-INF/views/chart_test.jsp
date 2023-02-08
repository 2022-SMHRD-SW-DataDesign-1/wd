<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/plugins/jquery/jquery.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

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
</style>
</head>
<body>

<div class="chartCard">
	<div class="chartBox">
		<canvas id="myChart" style="width: 600px;  height: 415px;"></canvas>
	</div>
</div>

<script>

// test 차트
let barDataset =  [
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50),
	Math.floor(Math.random() * 50)
];

let lineDataset =  [
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100),
	Math.floor(Math.random() * 100)
];


// 지정한 시각마다 reload
function test(){
	setTimeout(function(){	
		
		// ajax 선언, 성공 함수, 넘어오는 data를 넣어주기
		$.ajax({
			url : 'ChartSocket.do',
			type: 'get',
			/* dataType:'text', */
			success: function() {
				console.log()
				
				// 넘어오는 data 대입
				rdNum1 = [
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50),
					Math.floor(Math.random() * 50)
				];
				rdNum2 = [
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100),
					Math.floor(Math.random() * 100)
				];
				
				console.log(rdNum1);
				console.log(rdNum2);
				
				L_data = {
					labels: [ 
						'person', 'rider', 'car', 'truck', 'bus', 'train', 'motorcycle', 'bicycle' // x축 라벨
					],
					datasets: [{
						label: 'Object Count', // 범례 이름
						backgroundColor: 'rgba(75, 192, 192, 1)',
						borderColor: 'rgba(75, 192, 192, 1)',
						data: rdNum1,
						borderWidth: 1
					}, {
						type:'line',
						label: 'Object Accuracy',
						backgroundColor: 'rgba(255, 99, 132, 1)',
						borderColor: 'rgba(255, 99, 132, 1)',
						fill: false,
						data: rdNum2,
					}]
				}
				
		
				L_config = {
					type: 'bar',
					data: L_data,
					options: {
						maintainAspectRatio: false,
						title: {
							text: 'Chart.js Time Scale'
						},
						scales: {
							resposive: false, // default값 true, 차트 크기를 변경하기 위해 false로 변경
							y: {
								beginAtZero: true // y축 값 0부터 시작
							}
						}
					} // options end
				};
		
		
				myChart.destroy();
				myChart = new Chart(
					document.getElementById('myChart'),
					L_config
				);
				
				return test();
				
			}, // success end
			error : function() {
				console.log()
			} // error end
		
		});// ajax end
	     
	}, 5000); // timr end
};// test end

test(); // 페이지 업로드 된 후 실행되는 함수


// 차트 초기 데이터
let rdNum1 = [0, 0, 0, 0, 0, 0, 0, 0 ];
let rdNum2 = [0, 0, 0, 0, 0, 0, 0, 0 ];
let zeroNum = [0, 0, 0, 0, 0, 0, 0, 0 ];


// 차트 전체 data
let L_data = {
	labels: [ 
		'person', 'rider', 'car', 'truck', 'bus', 'train', 'motorcycle', 'bicycle' // x축 라벨
	],
	datasets: [{
		label: 'Object Count', // 범례 이름
		backgroundColor: 'rgba(75, 192, 192, 1)',
		borderColor: 'rgba(75, 192, 192, 1)',
		data: zeroNum,
		borderWidth: 1
	}, {
		type:'line',
		label: 'Object Accuracy',
		backgroundColor: 'rgba(255, 99, 132, 1)',
		borderColor: 'rgba(255, 99, 132, 1)',
		fill: false,
		data: zeroNum
	}]
}// L_data end


// 차트 설정
let L_config = {
	type: 'bar',
	data: L_data,
	options: {
		maintainAspectRatio: false,
		title: {
			text: 'Chart.js Time Scale'
		},
		scales: {
			resposive: false, // default값 true, 차트 크기를 변경하기 위해 false로 변경
			y: {
				beginAtZero: true // y축 값 0부터 시작
			}
		}
	} // options end
}; // config end
 
// 차트 그리기
let myChart = new Chart(
	document.getElementById('myChart'),
	L_config
);
</script>


</body>
</html>