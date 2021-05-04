
<%@page import="com.project.dao.StudentDao"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    
    <head>
        <script type="text/javascript" src="assest/js/jquery-1.9.1.min.js"></script>
   
        <script src="asset/dist/js/demo.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
  <div align="right"><a style="color:blue " href="viewstud_status.jsp" class="list3" >Go Back</a></div>
<% 
int Aptitude=0;
int Technical=0;
int Verbal=0;
ResultSet resultSet=new StudentDao().getstudresult2(request.getParameter("email"));

while(resultSet.next())
{
	if("Aptitude".equals(resultSet.getString("testtype")))
		Aptitude=resultSet.getInt("obt_marks");
	if("Technical".equals(resultSet.getString("testtype")))
		Technical=resultSet.getInt("obt_marks");
	if("Verbal".equals(resultSet.getString("testtype")))
		Verbal=resultSet.getInt("obt_marks");
}
System.out.println(Aptitude);
System.out.println(Technical);
System.out.println(Verbal);

%>

<!--  double pretest=(Double)session.getAttribute("pretest");
double finaltest=(Double)session.getAttribute("finaltest");  -->

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>



 <script type="text/javascript">

Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Test Result'
    },
    subtitle: {
        text: ''
    },
    xAxis: {
        categories: [
            
            
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Test results'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} </b>%</td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Aptitude',
        data: [<%=Aptitude%>]

    }, {
        name: 'Technical',
        data: [<%=Technical%>]

    },{
        name: 'Verbal',
        data: [<%=Verbal%>]

    }
    
    
    ]
});
</script>
		
  </head> 
<body>
        
<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<div class="wrapper" style="height:1000px;">
           <h2 class="style1"></h2>
          
        </div>    
</body></html>