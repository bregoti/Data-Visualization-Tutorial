<!DOCTYPE html>
<meta charset="utf-8">
<style>

.background {
  fill: none;
  pointer-events: all;
}

.feature {
  fill: #ccc;
  cursor: pointer;
}

.feature.active {
  fill: orange;
}

.mesh {
  fill: none;
  stroke: #fff;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.county-borders {
  fill: none;
  stroke: green;
  stroke-width: .25px;
  stroke-linejoin: round;
  stroke-linecap: round;
  pointer-events: none;
}

.counties {
  fill: none;
}

.states {
  fill: none;
}

.q0-9 { fill:rgb(247,251,255); }
.q1-9 { fill:rgb(222,235,247); }
.q2-9 { fill:rgb(198,219,239); }
.q3-9 { fill:rgb(158,202,225); }
.q4-9 { fill:rgb(107,174,214); }
.q5-9 { fill:rgb(66,146,198); }
.q6-9 { fill:rgb(33,113,181); }
.q7-9 { fill:rgb(8,81,156); }
.q8-9 { fill:rgb(8,48,107); }

</style>
<body>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/queue.v1.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script>

		var width = 1260,
		    height = 900,
		    active = d3.select(null);
		
		/* var rateById = d3.map();
		
		var quantize = d3.scale.quantize()
			.domain([0, 2])
			.range(d3.range(9).map(function(i) { return "q" + i+ "-9";}));
		 */
		 
		//Define quantize scale to sort data values into buckets of color
		var color = d3.scale.quantize()
						.domain([0, 2])
						.range(["rgb(237,248,233)","rgb(186,228,179)","rgb(116,196,118)","rgb(49,163,84)","rgb(0,109,44)"]);
		 
		var projection = d3.geo.albersUsa()
		    .scale(1000)
		    .translate([width / 2, height / 2]);
		
		var zoom = d3.behavior.zoom()
		    .translate([0, 0])
		    .scale(1)
		    .scaleExtent([1, 8])
		    .on("zoom", zoomed);
		
		var path = d3.geo.path()
		    .projection(projection);
		
		var svg = d3.select("body").append("svg")
		    .attr("width", width)
		    .attr("height", height)
		    .on("click", stopped, true);
		
		svg.append("rect")
		    .attr("class", "background")
		    .attr("width", width)
		    .attr("height", height)
		    .on("click", reset);
		
		var g = svg.append("g");
		
		svg
		    .call(zoom) // delete this line to disable free zooming
		    .call(zoom.event);
		
		 /* d3.csv("resources/data/States.csv")
	    .row(function(d) { return {key: d.state, value: +d.value}; })
	    .get(function(error, rows) { console.log(rows); }); */
		
	   /*  d3.csv("resources/data/States.csv", function(data){
	    	
	    	var row = function(d) {
	    		var key = d.state;
	    		var value = d.value;
	    		console("key:"+key +" value:"+value);
	    	} 
	     }
	    ); */
	    
		/*
		var testData;
		d3.text("resources/data/States.csv", function(unparsedData) {
			testData = d3.csv.parseRows(unparsedData);
			alert("parsedData:"+testData.state);
		}); */
		
		/* queue()
	    .defer(d3.json, "resources/json/us.json")
	    .defer(d3.tsv, "resources/data/states.tsv", function(d) { rateById.set(d.state, +d.value); })
	    .await(ready); */
	    
	    
		
		d3.csv("resources/data/States.csv", function(data) {
			
			for ( var i=0; i<data.length; i++ ) {
				var key = data[i].state;
	    		var value = data[i].value;
	    		console.log("key:"+key +" value:"+value);
				
			}
			
			//Set input domain for color scale
			color.domain([
				d3.min(data, function(d) { return d.value; }), 
				d3.max(data, function(d) { return d.value; })
			]);
			
			d3.json("resources/json/us.json", function(error, us) {
				
				g.attr("class", "states")
				 .selectAll("path")
				 .data(topojson.feature(us, us.objects.states).features)
				 .enter()
				 	.append("path")
				 	.attr("d",path)
				    .attr("class", "feature");
				 	/* .style("fill", function(d) {
				 		var value = d.value;
				 		console.log(value);
				 		if (value) {
				 			return color(value);
				 		}else {
				 			return "#ccc";
				 		}
				 	}); */
				
				
				/* g.selectAll("path")
			      .data(topojson.feature(us, us.objects.states).features)
			    .enter().append("path")
			      .attr("d", path)
			      .attr("class", "feature")
			      .on("click", clicked); */
				
			   g.append("path")
			      .datum(topojson.mesh(us, us.objects.states, function(a, b) { return a !== b; }))
			      .attr("class", "mesh")
			      .attr("d", path);
			   
			   /* g.attr("class", "counties")
			   	.selectAll("path")
			    .data(topojson.feature(us, us.objects.counties).features)
			    .enter().append("path")
			      .attr("d", path)
			      .attr("class", function(d) { return quantize(rateById.get(d.state));});
			  */
			   g.append("path")
			  .datum(topojson.mesh(us, us.objects.counties, function(a, b) { return a !== b && (a.id / 1000 | 0) === (b.id / 1000 | 0); }))
			  .attr("class", "county-borders")
			  .attr("d", path);
			  
			}); // end of us.json
		
		}); // end of state rows
		function clicked(d) {
		  if (active.node() === this) return reset();
		  active.classed("active", false);
		  active = d3.select(this).classed("active", true);
		
		  var bounds = path.bounds(d),
		      dx = bounds[1][0] - bounds[0][0],
		      dy = bounds[1][1] - bounds[0][1],
		      x = (bounds[0][0] + bounds[1][0]) / 2,
		      y = (bounds[0][1] + bounds[1][1]) / 2,
		      scale = .9 / Math.max(dx / width, dy / height),
		      translate = [width / 2 - scale * x, height / 2 - scale * y];
		
		  svg.transition()
		      .duration(750)
		      .call(zoom.translate(translate).scale(scale).event);
		}
		
		function reset() {
		  active.classed("active", false);
		  active = d3.select(null);
		
		  svg.transition()
		      .duration(750)
		      .call(zoom.translate([0, 0]).scale(1).event);
		}
		
		function zoomed() {
		  g.style("stroke-width", 1.5 / d3.event.scale + "px");
		  g.attr("transform", "translate(" + d3.event.translate + ")scale(" + d3.event.scale + ")");
		}
		
		// If the drag behavior prevents the default click,
		// also stop propagation so we don't click-to-zoom.
		function stopped() {
		  if (d3.event.defaultPrevented) d3.event.stopPropagation();
		}

</script>
