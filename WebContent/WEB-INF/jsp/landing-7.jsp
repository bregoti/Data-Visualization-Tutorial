<!DOCTYPE html>
<meta charset="utf-8">
<style>

.background {
  fill: none;
  pointer-events: all;
}

.states {
  fill: none;
  stroke: #fff;
  stroke-linecap: round;
  stroke-linejoin: round;
}

.feature {
  fill: #ccc;
  cursor: pointer;
}

.feature.active {
  fill: orange;
}
</style>
<body>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/queue.v1.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script>

var width = 1260,
    height = 900;

active = d3.select(null);
 var color = d3.scale.threshold()
    .domain([.02, .04, .06, .08, .10])
    .range(["#f2f0f7", "#dadaeb", "#bcbddc", "#9e9ac8", "#756bb1", "#54278f"]);  
    
/* var color = d3.scale.threshold()
    .domain([.00, .50, 1.00, 1.50, 2.00])
    .range(["#f2f0f7", "#dadaeb", "#bcbddc", "#9e9ac8", "#756bb1", "#54278f"]);  */
   
var projection = d3.geo.albersUsa()
    .scale(1000)
    .translate([width / 2, height / 2]);

var zoom = d3.behavior.zoom()
    .translate([0, 0])
    .scale(1)
    .scaleExtent([1, 8])
    .on("zoom", zoomed);
 
var path = d3.geo.path().projection(projection);

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

	queue()
    .defer(d3.json, "resources/json/us.json")
    .defer(d3.tsv, "resources/data/states.tsv")
    .await(ready);

function ready(error, us, applications) {
  var rateById = {};

  applications.forEach(function(d) { 
	  rateById[d.id] = +d.rate; });

  g.attr("class", "counties")
  .selectAll("path")
    .data(topojson.feature(us, us.objects.counties).features)
  .enter().append("path")
    .attr("d", path)
    .style("fill", function(d) { return color(rateById[d.id]); });

  g.selectAll("path")
  .data(topojson.feature(us, us.objects.states).features)
	.enter().append("path")
  .attr("d", path)
  .attr("class", "feature")
  .on("click", clicked);
  
  g.append("path")
  .datum(topojson.mesh(us, us.objects.states, function(a, b) { return a.id !== b.id; }))
  .attr("class", "states")
  .attr("d", path);
 
}

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