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

.d3-tip {
  line-height: 1;
  font-weight: bold;
  padding: 12px;
  background: rgba(0, 0, 0, 0.8);
  color: #fff;
  border-radius: 2px;
}

/* Creates a small triangle extender for the tooltip */
.d3-tip:after {
  box-sizing: border-box;
  display: inline;
  font-size: 10px;
  width: 100%;
  line-height: 1;
  color: rgba(0, 0, 0, 0.8);
  content: "\25BC";
  position: absolute;
  text-align: center;
}

/* Style northward tooltips differently */
.d3-tip.n:after {
  margin: -1px 0 0 0;
  top: 100%;
  left: 0;
}


</style>
<body>
<BR><BR>
<div align="center">
	<H1> ISSUER & PLAN MARKETPLACE APPLICATION MAP</H1>
</div>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/queue.v1.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script src="http://labratrevenge.com/d3-tip/javascripts/d3.tip.v0.6.3.js"></script>
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
    .scale(1500)
    .translate([width / 2, height / 2]);

var zoom = d3.behavior.zoom()
    .translate([0, 0])
    .scale(1)
    .scaleExtent([1, 8])
    .on("zoom", zoomed);
    
var rateById = {};

var tip = d3.tip()
	.attr('class', 'd3-tip')
	.offset([-10, 0])
	.html(function(d) {
		d3.select(this)
	    .style("fill", "#509e2f");
		
		return "<strong>No of Applications:</strong> <span style='color:red'>" + rateById[d.id] + "</span>";
	});


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
	
	svg.call(tip);
	
	queue()
    .defer(d3.json, "resources/json/us.json")
    .defer(d3.tsv, "resources/data/states.tsv")
    .await(ready);

function ready(error, us, applications) {


  applications.forEach(function(d) { 
	  rateById[d.id] = +d.rate; });

  g.attr("class", "counties")
  .selectAll("path")
    .data(topojson.feature(us, us.objects.counties).features)
  .enter().append("path")
    .attr("d", path)
    .style("fill", function(d) { return color(rateById[d.id]); })
    .on("mouseover", tip.show)
   /*  .on("mouseover", function(d) {
    	  var xPosition = d3.mouse(this)[0];
          var yPosition = d3.mouse(this)[1] - 30;
          svg.append("text")
              .attr("id", "tooltip")
              .attr("x", xPosition)
              .attr("y", yPosition)
              .attr("text-anchor", "middle")
              .attr("font-family", "sans-serif")
              .attr("font-size", "11px")
              .attr("font-weight", "bold")
              .attr("fill", "orange")
              .text(tip.show + rateById[d.id]);

          d3.select(this)
          	.style("fill", "#509e2f");
        } */
    .on("mouseout", function(d) {
            d3.select("#tooltip").remove();
            d3.select(this)
            .transition()
            .duration(250)
            .style("fill", function(d) { return	color(rateById[d.id]);});
    });

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
	
function mouseover(d) {
	  var xPosition = d3.mouse(this)[0];
      var yPosition = d3.mouse(this)[1] - 30;

      svg.append("text")
          .attr("id", "tooltip")
          .attr("x", xPosition)
          .attr("y", yPosition)
          .attr("text-anchor", "middle")
          .attr("font-family", "sans-serif")
          .attr("font-size", "11px")
          .attr("font-weight", "bold")
          .attr("fill", "black")
          .text(d.rate);

      d3.select(this)
      .style("fill", "#509e2f");
	
}	

function mouseout(d,rateById) {
    d3.select("#tooltip").remove();

    d3.select(this)
    .transition()
    .duration(250)
    .style("fill", function(d) { return color(rateById[d.id]); });
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
