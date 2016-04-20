<!DOCTYPE html>
<meta charset="utf-8">
<style>

path {
  fill: none;
  stroke: red;
  stroke-width: .5px;
}

.land-boundary {
  stroke-width: 1px;
  stroke:blue;
}

.county-boundary {
  stroke: green;
}

.background {
  fill: none;
  pointer-events: all;
}
#states {
  fill: #aaa;
}

#states .active {
  fill: orange;
}
#state-borders {
  fill: none;
  stroke: #fff;
  stroke-width: 1.5px;
  stroke-linejoin: round;
  stroke-linecap: round;
  pointer-events: none;
}
</style>
<body>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="http://d3js.org/topojson.v1.min.js"></script>
<script>

var width = 960,
    height = 500,
    centered;
    
var projection = d3.geo.albersUsa()
  	.scale(1070)
  	.translate([width / 2, height / 2]);
  	
var path = d3.geo.path()
	.projection(projection);

var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height);
    
svg.append("rect")
	.attr("class", "background")
	.attr("width", width)
	.attr("height", height)
	.on("click", clicked);

var g = svg.append("g");

d3.json("resources/json/us.json", function(error, us) {
	g.append("g")
    	.attr("id", "states")
  	.selectAll("path")
    	.data(topojson.feature(us, us.objects.states).features)
  	.enter().append("path")
    	.attr("d", path)
    	.on("click", clicked);
	
	g.append("path")
    .datum(topojson.mesh(us, us.objects.states, function(a, b) { return a !== b; }))
    .attr("id", "state-borders")
    .attr("d", path);
	
	/*
  svg.append("path")
      .datum(topojson.feature(topology, topology.objects.land))
      .attr("d", path)
      .attr("class", "land-boundary");

  svg.append("path")
  .datum(topojson.mesh(topology, topology.objects.counties, function(a, b) { return a !== b && (a.id / 1000 | 0) === (b.id / 1000 | 0); }))
  .attr("d", path)
  .attr("class", "county-boundary");

 
  svg.append("path")
      .datum(topojson.mesh(topology, topology.objects.states, function(a, b) { return a !== b; }))
      .attr("d", path)
      .attr("class", "state-boundary");*/
});


function clicked(d) {
	  var x, y, k;

	  if (d && centered !== d) {
	    var centroid = path.centroid(d);
	    x = centroid[0];
	    y = centroid[1];
	    k = 4;
	    centered = d;
	  } else {
	    x = width / 2;
	    y = height / 2;
	    k = 1;
	    centered = null;
	  }

	  g.selectAll("path")
	      .classed("active", centered && function(d) { return d === centered; });

	  g.transition()
	      .duration(750)
	      .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")scale(" + k + ")translate(" + -x + "," + -y + ")")
	      .style("stroke-width", 1.5 / k + "px");
	}


</script>