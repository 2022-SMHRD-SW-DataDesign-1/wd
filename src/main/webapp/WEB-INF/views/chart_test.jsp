<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- chart.js -->
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
</style>
 

</head>
<body>
<div class="chartCard">
  <div class="chartBox">
    <canvas id="myChart"></canvas>
  </div>
</div>
<script>
    // setup 
    const data = {
      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      datasets: [{
        label: 'Stuff Accuracy',
        data: [18, 12, 6, 9, 12, 3, 9],
        backgroundColor: [
          'rgba(255, 26, 104, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(0, 0, 0, 0.2)'
        ],
        borderColor: [
          'rgba(255, 26, 104, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)',
          'rgba(0, 0, 0, 1)'
        ],
        borderWidth: 1,
        cutout: '90%',
        borderRadius: 20,
        offset: 10
      }]
    };

    // doughnutLabelsLine plugin
    const doughnutLabelsLine = {
    	id: 'doughnutLabelsLine',
    	afterDraw(chart, args, options){
    		const { ctx, chartArea: { top, bottom, left, right, width, height} } = chart;
    		
    		chart.data.datasets.forEach((dataset, i) => {
    			chart.getDatasetMeta(i).data.forEach((datapoint, index) => {
    				//console.log(datapoint.tooltipPositon())
    				const{ x, y } = datapoint.tooltipPositon();
    				
    				ctx.fillStyle = 'black';
    				ctx.rectStyle(x, y, 10, 10);
    			})
    		})
    	
    	}
    }
    
    // config 
    const config = {
      type: 'doughnut',
      data,
      options: {
    	  plugins: {
    		  legend: {
    			  display : false // 범례 없애기
    		  }
    	  }
      },
      plugins: [doughnutLabelsLine]
    };

    // render init block
    const myChart = new Chart(
      document.getElementById('myChart'),
      config
    );
 </script>
</body>
</html>