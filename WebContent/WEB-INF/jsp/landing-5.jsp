<!DOCTYPE html>
<meta charset="utf-8">
<style>

path {
  fill: none;
  stroke: #000;
  stroke-width: .5px;
}

.us-boundary {
  stroke-width: 1px;
}

.county-boundary {
  stroke: #aaa;
}

.state-boundary {
  fill: #ccc;
  stroke: #aaa;
}
</style>
<body>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<link type="text/css" rel="stylesheet" href="resources/css/colorbrewer.css"/>
<script>

var width = 1260,
    height = 900;

/* var color = d3.scale.quantize()
		.range(["rgb(237,248,233)","rgb(186,228,179)","rgb(116,196,118)","rgb(49,163,84)","rgb(0,109,44)"]);
 */
 // Define scale to sort data values into color buckets
 var color = d3.scale.threshold()
     .domain([10, 200, 1000, 2000, 5000, 10000, 20000, 40000, 50000])
     .range(["#fff7ec","#fee8c8","#fdd49e","#fdbb84","#fc8d59","#ef6548","#d7301f","#b30000","#7f0000"]);

 var color = d3.scale.category10();


var path = d3.geo.path();

var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height);
    
var g = svg.append("g");

	d3.csv("resources/data/States.csv", function(data) {
	
		//Set input domain for color scale
	/* 	color.domain([
			d3.min(data, function(d) { return d.value; }), 
			d3.max(data, function(d) { return d.value; })
		]);
	 */	
		var pad = d3.format("05d"),
	     quantize = d3.scale.quantile().domain([0, 15]).range(d3.range(9));

		
		d3.json("resources/json/us.json", function(error, topology) {
			svg.append("g")
		  g.append("path")
		      .datum(topojson.feature(topology, topology.objects.land))
		      .attr("d", path)
		      .attr("class", "us-boundary");
		
		  g.append("path")
		      .datum(topojson.mesh(topology, topology.objects.counties, function(a, b) { return a !== b && (a.id / 1000 | 0) === (b.id / 1000 | 0); }))
		      .attr("d", path)
		      .attr("class", "county-boundary");

		  g.selectAll("path")
			 .data(topojson.feature(topology, topology.objects.states).features)
			 .enter()
			 	.append("path")
			 	.attr("d",path)
			 	.style("fill", function (d,i) { color(i) });
		  
			 	/*.style("fill", function (d) {
			 		 console.log(quantize(data[pad(d.state)]));
			 		return "q" + quantize(data[pad(d.state)]) + "-9";  
			 	 } ); 
			 	 */
			
			 	
			 	
		/*   svg.append("path")
		      .datum(topojson.mesh(topology, topology.objects.states, function(a, b) { return a !== b; }))
		      .attr("d", path)
		      .attr("class", "state-boundary");
		   */
		  
		});
	});
</script>