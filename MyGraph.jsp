<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<% 
	StringBuilder myData=new StringBuilder();
	String strData ="";
    String chartTitle="";
    String legend="";
	try{
		out.print("<button onclick=\"goBack()\">Go Back</button>");
		out.print("<script>");
		out.print("function goBack() {");
		  out.print("window.history.back();");
		out.print("}</script>");
		out.print("<br>");
		out.print("<br>");
		out.print("<br>");
		//this list will hold the x-axis and y-axis data as a pair
		ArrayList<Map<String,Integer>> list = new ArrayList();
   		Map<String,Integer> map = null;
   		//Get the database connection
   		ApplicationDB db = new ApplicationDB();	
   		Connection con = db.getConnection();		

   		//Create a SQL statement
   		Statement stmt = con.createStatement();
   		
   		String graphType = request.getParameter("graph");   
   		String drinker = request.getParameter("drinker"); 
   		//Make a query
   		String query = "" ;
   		if(graphType.equalsIgnoreCase("firstgraph")){
   	   		query = "select item , sum(quantity) as quantity_of_beer_ordered from( select transactions.item,transactions.quantity from bills join transactions on bills.bill_id=transactions.bill_id where type = 'beer' and bills.drinker = '"+drinker+"') as t group by t.item order by quantity_of_beer_ordered desc LIMIT 10;";
   		}else if(graphType.equalsIgnoreCase("secondgraph")){
   	   		query = "select day, sum(total_price) from bills where drinker='"+drinker+"'group by day;";
   		}else{
   			query = "select DATE_FORMAT(date, \"%M\") as Month, sum(total_price) from bills where drinker='"+drinker+"'group by Month;";
   		}
   		
   		//Run the query against the database.
   		ResultSet result = stmt.executeQuery(query);
   		//Process the result
   		while (result.next()) { 
   			map=new HashMap<String,Integer>();
   			if(graphType.equalsIgnoreCase("firstgraph")){
   	   			map.put(result.getString("item"),result.getInt("quantity_of_beer_ordered"));
   	   		}else if(graphType.equalsIgnoreCase("secondgraph")){
   	   			map.put(result.getString("day"),result.getInt("sum(total_price)"));
   	   		}else{
   	   		map.put(result.getString("Month"),result.getInt("sum(total_price)"));
   	   		}
   			list.add(map);
   	    } 
   	    result.close();
   	    
   	    //Create a String of graph data of the following form: ["Caravan", 3],["Cabana",2],...
        for(Map<String,Integer> hashmap : list){
        		Iterator it = hashmap.entrySet().iterator();
            	while (it.hasNext()) { 
           		Map.Entry pair = (Map.Entry)it.next();
           		String key = pair.getKey().toString().replaceAll("'", "");
           		myData.append("['"+ key +"',"+ pair.getValue() +"],");
           	}
        }
        strData = myData.substring(0, myData.length()-1); //remove the last comma
        
        //Create the chart title according to what the user selected
        if(graphType.equalsIgnoreCase("firstgraph")){
          chartTitle = "Beer ordered the most and the quantity the ordered with";
          legend = "beers";
        }else if(graphType.equalsIgnoreCase("secondgraph")){
            chartTitle = "see graphs with his/her spending in different bars, per days of the week";
            legend="days";
        }else{
            chartTitle = "see graphs with his/her spending in different bars, per months of the year";
            legend="months";
        }
	}catch(SQLException e){
    		out.println(e);
    }
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Graphs</title>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script> 
		
			var data = [<%=strData%>]; //contains the data of the graph in the form: [ ["Caravan", 3],["Cabana",2],...]
			var title = '<%=chartTitle%>'; 
			var legend = '<%=legend%>'
			//this is an example of other kind of data
			//var data = [["01/22/2016",108],["01/24/2016",45],["01/25/2016",261],["01/26/2016",224],["01/27/2016",307],["01/28/2016",64]];
			var cat = [];
			data.forEach(function(item) {
			  cat.push(item[0]);
			});
			document.addEventListener('DOMContentLoaded', function () {
			var myChart = Highcharts.chart('graphContainer', {
			    chart: {
			        defaultSeriesType: 'column',
			        events: {
			            //load: requestData
			        }
			    },
			    title: {
			        text: title
			    },
			    xAxis: {
			        text: 'xAxis',
			        categories: cat
			    },
			    yAxis: {
			        text: 'yAxis'
			    },
			    series: [{
			        name: legend,
			        data: data
			    }]
			});
			});
		
		</script>
	</head>
	<body>

	<div id="graphContainer" style="width: 500px; height: 400px; margin: 0 auto"></div>



</body>
</html>