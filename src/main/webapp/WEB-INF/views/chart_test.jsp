<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- chart.js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>	
</head>
<body>
<div style="width: 900px; height: 900px;">
	<!--차트가 그려질 부분-->
	<canvas id="jsChart"></canvas>
</div>
<script type="text/javascript">
//차트 데이터 속성 설정

var chartdata = {
    labels: [],
    datasets: [
        {
            label: "label1",
            lineTension: 0.1,
            borderColor: 'rgba(255, 99, 132, 0.1)',
            backgroundColor: '#2196F3',
            pointBorderColor: "rgba(75,192,192,1)",
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBackgroundColor: "rgba(75,192,192,1)",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            pointHoverBorderWidth: 2,
            data: [1000,2000,3000]
        }, {
            label: "label2",
            lineTension: 0.1,
            borderColor: 'rgba(255, 199, 132, 0.1)',
            backgroundColor: '#4CAF50',
            pointBorderColor: "rgba(75,192,192,1)",
            pointBackgroundColor: "#fff",
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBackgroundColor: "rgba(75,192,192,1)",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            pointHoverBorderWidth: 2,
            data: [1000,2000,3000]
        }, {
            label: "label13",
            type: "line",//다중 그래프이기 때문에 기본 bar타입이 아닌 line타입으로 따로 설정해줌. 단일 그래프시 불필요
            lineTension: 0.1,
            borderColor: 'rgba(255, 204, 255, 0.1)',
            backgroundColor: '#f39c12',
            pointBorderColor: "rgba(75,192,192,1)",
            pointBackgroundColor: "#fff",
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBackgroundColor: "rgba(75,192,192,1)",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            pointHoverBorderWidth: 2,
            data: [1000,2000,3000]
        }
    ]
};

 

//차트 옵션 설정(X,Y축)
var chartOptions = {
    scales: {
        xAxes: [
            {
                ticks: {
                    beginAtZero: true
                },
                scaleLabel: {
                    display: true,
                    labelString: "x축 텍스트",
                    fontColor: "red"
                },
                stacked: true
            }
        ],
        yAxes: [
            {
                scaleLabel: {
                    display: true,
                    labelString: "y축 텍스트",
                    fontColor: "green"
                },
                ticks: {
                    // max: 7000,
                    min: 0,
                    // stepSize: 1000,
                    autoSkip: true
                },
                stacked: true
            }
        ]
    },
    responsive: true
};

 

//차트 추가
var ctx = document.getElementById("jsChart");
JsChartBar = new Chart(ctx, {
    type: 'bar',
    data: chartdata,
    options: chartOptions
});
</script>
</body>
</html>