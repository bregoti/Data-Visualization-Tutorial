<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Issue & Plan Market Place Application Map</title>
	<link href="resources/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	
	<style>

			body{
				font: 62.5% "Trebuchet MS", sans-serif;
				margin: 2px;
				top:10px;
			}
			
			#header {
				width: 100%;
				background: #c3f08e;
				height: 35px;
			}
			
			.title{
				left: 0;
				right: 0;
				width: 100%;
				text-align: center;
				line-height: 35px;
				font-size: 15px;
				pointer-events: none;
				float:center;
				font-weight:bold;
			}
			
			#wrapper {
			    width: 70%;
			    border: 15px;
			    background-color: #ffffff;
			    margin:0 auto; /* Centers wrapper */
			    text-align: center;
			    color: #ebebeb;
			    padding:5px;
			    opacity: 1;
			}
			
			#map {
			    border: 5px;
			}
			
			
			#state-county {
				width: 100%;
				height:35px;
			}

			#state-county #radio-state-county {
				float:right;
			}
			
			#main {
				width: 30%;
				float:right;
			}
			
			#market {
				width: 100%;
			}
			
			.center{
				text-align:center;
			}
			
			.submit {
				width:30%;
				float:right;
				margin-right:200px;
			}
			
		.states-name {
			font-weight:bold;
			text-anchor:middle;
		}	
		.d3-tip {
		  line-height: 1;
		  font-weight: bold;
		  padding: 12px;
		  background: rgba(20,20,20, 0.8);
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
		  color: rgba(20,20,20, 0.8);
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
		
		#legend {
		    padding: 1.5em 0 0 1.5em;
		    width:70%;
		    float:center;
		}
		
		.list-inline {
			padding-left: 0px;
			list-style: none outside none;
		}
		
		li.key {
		    border-top-width: 15px;
		    border-top-style: solid;
		    font-size: .9em;
		    font-weight:bold;
		    width: 10%;
		    padding-left: 0;
		    padding-right: 0;
		}

		.list-inline > li {
		    display: inline-block;
		    padding-right: 5px;
		    padding-left: 5px;
		}
	</style>
	
	
	<script src="resources/js/jquery-1.10.2.js"></script>
	<script src="resources/js/jquery-ui-1.10.4.custom.js"></script>
	<script src="http://d3js.org/d3.v3.min.js"></script>
	<script src="http://labratrevenge.com/d3-tip/javascripts/d3.tip.v0.6.3.js"></script>
	<script>
		$(function() {
			$( "#submit" ).button();
			$( "#reset" ).button();
			$( "#radio-state-county" ).buttonset();
			$( "#menu-tabs" ).tabs();
			$( "#market-sub-menu" ).buttonset();
			$( "#pt-sub-menu" ).buttonset();
			$( "#ml-sub-menu" ).buttonset();
			
		});	
		
		</script>
	
</head>
<body>

   <div id="header">
	<div class="title">
		<h1>ISSUER & PLAN MARKETPLACE APPLICATION MAP </h1>
	</div>
   </div>
   
   <!--  new layout starts here -->
   <div id="wrapper">
   	 <div id="map">
	 </div>
	 <div id="legend">
	</div>			
   </div>
   
   <div id="state-county">
		<form style="margin-top: 1em;">
			<div id="radio-state-county">
				<input type="checkbox" id="state" checked="checked"><label for="state">State</label>
				<input type="checkbox" id="county" checked="checked"><label for="county">County</label>
			</div>
		</form>
	</div>
	<div id="main"> 
		<div id="menu-tabs">
			<ul>
				<li><a href="#market">Market</a></li>
				<li><a href="#plan-type">Plan Type</a></li>
				<li><a href="#metal-level">Metal Level</a></li>
			</ul>
			<div id="market">
				<div class="center">
					<div id="market-sub-menu">
						<input type="checkbox" id="individual" checked="checked"><label for="individual">Individual</label>
						<input type="checkbox" id="shop"  checked="checked"><label for="shop">SHOP</label>
					</div>
				</div>
			</div>
			<div id="plan-type">
				<div class="center">
					<div id="pt-sub-menu" style="float:center;">
						<input type="checkbox" id="ppo" checked="checked"><label for="ppo">PPO</label>
						<input type="checkbox" id="hmo" checked="checked"><label for="hmo">HMO</label>
						<input type="checkbox" id="epo" checked="checked"><label for="epo">EPO</label>
						<input type="checkbox" id="pos" checked="checked"><label for="pos">POS</label>
						<input type="checkbox" id="indemnity" checked="checked"><label for="indemnity">Indemnity</label>
					</div>
				</div>
			

			</div>
			<div id="metal-level">
				<div class="center">
					<div id="ml-sub-menu">
						<input type="checkbox" id="platinum" checked="checked"><label for="platinum">Platinum</label>
						<input type="checkbox" id="gold" checked="checked"><label for="gold">Gold</label>
						<input type="checkbox" id="silver" checked="checked"><label for="silver">Silver</label>
						<input type="checkbox" id="bronze" checked="checked"><label for="bronze">Bronze</label>
						<input type="checkbox" id="catastrophic" checked="checked"><label for="catastrophic">Catastrophic</label>
					</div>
				</div>

		</div>
	  </div>
	  <div id="submit">
	  		<button id="submit">submit</button>
	  		<button id="reset">reset</button>
	  </div>
	</div>
	
	<!-- ----------------Map Start Here -->
			
				 <script type="text/javascript">
		/************************* Map code starts here ******************************/
		(function() {
				//Width and height
				var w = 1300;
				var h = 700;
			
				//Define map projection
				var projection = d3.geo.albersUsa()
									   .translate([w/2, h/2])
									   .scale([1000]);
			
				//Define path generator
				var path = d3.geo.path()
								 .projection(projection);
								 
				//Define quantize scale to sort data values into buckets of color
				var color = d3.scale.quantize()
									.range(["rgb(254,232,200)","rgb(253,212,158)","rgb(253,187,132)","rgb(252,141,89)","rgb(239,101,72)","rgb(215,48,31)","rgb(153,0,0)"]);
									
			    var tip = d3.tip()
				.attr('class', 'd3-tip')
				.offset([-10, 0])
				.html(function(d) {
					d3.select(this)
				    .style("fill", "#ba4545");
					
					var msg = tooltipMsg(d);
									  
					return msg;
				});
			    
			  
				//Create SVG element
				var svg = d3.select("#map")
							.append("svg")
							.attr("width", w)
							.attr("height", h);
			
				svg.call(tip);

			    var legend = d3.select('#legend')
		    	.append('ul')
		      	.attr('class', 'list-inline');

			  	var keys = legend.selectAll('li.key')
			      .data(color.range());
			  	
				var refreshMap = function() {
				
						//Load in agriculture data
						d3.csv("resources/data/States1.csv", function(data) {
					
							//Set input domain for color scale
							color.domain([
								d3.min(data, function(d) { return d.value; }), 
								d3.max(data, function(d) { return d.value; })
							]);
					
							//Load in GeoJSON data
							d3.json("resources/json/us-states.json", function(json) {
					
								// merging states data to GeoJSON object					
								mergeDataToGeo(data,json);
					
								//Bind data and create one path per GeoJSON feature
								svg.selectAll("path")
								   .data(json.features)
								   .enter()
								   .append("path")
								   .attr("d", path)
								   .style("fill", function(d) {
								   		//Get data value
								   		var value = d.properties.value;
								   		
								   		if (value) {
								   			//If value exists
									   		return color(value);
								   		} else {
								   			//If value is undefined
									   		return "#ccc";
								   		}
								   })
								   .style("stroke","#fff")
								   .style("stroke-linecap","round")
								   .style("stroke-linejoin","round")
								   .on("mouseover",tip.show)
								   .on("mouseout", function(d) {
							           // d3.select("#tooltip").remove();
							           tip.hide(d);
							            d3.select(this)
							            .transition()
							            .duration(250)
							            .style("fill", function(d) { //Get data value
									   		var value = d.properties.value;
									   		if (value) {
									   			//If value exists
										   		return color(value);
									   		} else {
									   			//If value is undefined
										   		return "#ccc";
									   		}
									   	});
								    }); 
								  
								
								 svg.selectAll("text")
						            .data(json.features)
						            .enter()
						            .append("text")
						            .attr("class","states-name")
						            .attr("transform", function (d) { return "translate(" + path.centroid(d) + ")"; })
						            .attr("dx", function (d) { return d.properties.dx || "0"; })
						            .attr("dy", function (d) { return d.properties.dy || "0.15em"; })
						            .text(function (d) { return d.properties.abbr; });
						           
							
								 keys.enter().append('li')
								    .attr('class', 'key')
								    .style('border-top-color', String)
								    .text(function(d) {
								        var r = color.invertExtent(d);
								        return String(d3.round(r[0], 0));
								    });		 
								 
							 });
							
						});
					}
	
					refreshMap();
	/************************ Map code ends here *********************************/


				// on submit click
				$('#submit').click(function () {
					
					svg.remove();
				
					//Create SVG element
					 svg = d3.select("#map")
								.append("svg")
								.attr("width", 1300)
								.attr("height", 700);
						
					refreshMap();
						
				/************************ Map code ends here *********************************/		
							
				}); 
		
				function mergeDataToGeo(data, json) {
					
					// market
					var individual = true;
					var shop = true;
					
					// plan type
					var ppo = true;
					var hmo = true;
					var epo = true;
					var pos = true;
					var indemnity = true;
					
					// metal level
					var platinum = true;
					var gold = true;
					var silver = true;
					var bronze = true;
					var catastrophic = true;
					
					if (!$("#individual").is(":checked")) {
						individual = false;
					}
					if (!$("#shop").is(":checked")) {
						shop = false;
					}
					if (!$("#ppo").is(":checked")) {
						ppo = false;
					}
					if (!$("#hmo").is(":checked")) {
						hmo = false;
					}
					if (!$("#epo").is(":checked")) {
						epo = false;
					}
					if (!$("#pos").is(":checked")) {
						pos = false;
					}
					if (!$("#indemnity").is(":checked")) {
						indemnity = false;
					}
					if (!$("#platinum").is(":checked")) {
						platinum = false;
					}
					if (!$("#gold").is(":checked")) {
						gold = false;
					}
					if (!$("#silver").is(":checked")) {
						silver = false;
					}
					if (!$("#bronze").is(":checked")) {
						bronze = false;
					}
					if (!$("#catastrophic").is(":checked")) {
						catastrophic = false;
					}
					
				 /* 	alert("individual:"+ individual +"shop:"+shop + "\n"+ "ppo:"+ppo+" hmo:"+hmo+" epo:"+epo+" pos:"+pos+" indemnity:"+indemnity+ 
							" \n"+ "platinum:"+platinum+" gold:"+ gold+" silver:"+silver+ " bronze:"+bronze+ " catastrophic:"+catastrophic); 
				 */	
				 	
					//Merge the data and GeoJSON
					//Loop through once for each ag. data value
					for (var i = 0; i < data.length; i++) {
				
						var dataState = data[i].state;				//Grab state name
						var dataValue = parseFloat(data[i].value);	//Grab data value, and convert from string to float
				
						//Find the corresponding state inside the GeoJSON
						for (var j = 0; j < json.features.length; j++) {
						
							var jsonState = json.features[j].properties.name;
				
							if (dataState == jsonState) {
						
								//Copy the data value into the JSON
								json.features[j].properties.value = dataValue;
								json.features[j].properties.state = dataState;
								//Stop looking through the JSON
								
								if(jsonState == "Alabama") {
										if (individual && ppo && platinum) {
											json.features[j].properties.value = "70";
										}else if (individual && ppo && gold) {
											json.features[j].properties.value = "100";
										}else if (individual && ppo && silver) {
											json.features[j].properties.value = "137";
										}else if (individual && ppo && bronze) {
											json.features[j].properties.value = "237";
										}else if (individual && ppo && catastrophic) {
											json.features[j].properties.value = "337";
										}else if (individual && ppo) {
											json.features[j].properties.value = "484";
										}else if (individual) {
											json.features[j].properties.value = "484";
										}else if (shop && ppo && platinum) {
											json.features[j].properties.value = "34";
										}else if (shop && ppo && gold) {
											json.features[j].properties.value = "134";
										}else if (shop && ppo && silver) {
											json.features[j].properties.value = "67";
										}else if (shop && ppo) {
											json.features[j].properties.value = "335";
										}else if (shop) {
											json.features[j].properties.value = "1139";
										}else {
											json.features[j].properties.value = "1623";
										} 
										
									
									break;
								}
								

								if(jsonState == "Florida") {
									
									if (individual && ppo && platinum) {
										json.features[j].properties.value = "100";
									}else if (individual && ppo && gold) {
										json.features[j].properties.value = "336";
									}else if (individual && ppo && silver) {
										json.features[j].properties.value = "157";
									}else if (individual && ppo && bronze) {
										json.features[j].properties.value = "140";
									}else if (individual && ppo && catastrophic) {
										json.features[j].properties.value = "37";
									}else if (individual && ppo) {
										json.features[j].properties.value = "404";
									}else if (individual) {
										json.features[j].properties.value = "4554";
									}else if (shop && ppo && platinum) {
										json.features[j].properties.value = "134";
									}else if (shop && ppo && gold) {
										json.features[j].properties.value = "336";
									}else if (shop && ppo && silver) {
										json.features[j].properties.value = "4";
									}else if (shop && ppo) {
										json.features[j].properties.value = "14";
									}else if (shop) {
										json.features[j].properties.value = "376";
									}else {
										json.features[j].properties.value = "4930";
									} 
									break;	
								}
						}		
					}
				}
			
			}
				
		    function tooltipMsg(d) {
		    	var market="";
				if ($("#individual").is(":checked")) {
					market += "INDIVIDUAL ";
				}
				if ($("#shop").is(":checked")) {
					market += "SHOP";
				}
				
				var plantype="";
				if ($("#ppo").is(":checked")) {
					plantype+="PPO ";
				}
				if ($("#hmo").is(":checked")) {
					plantype+="HMO ";
				}
				if ($("#epo").is(":checked")) {
					plantype+="EPO ";
				}
				if ($("#pos").is(":checked")) {
					plantype+="POS ";
				}
				if ($("#indemnity").is(":checked")) {
					plantype+="INDEMNITY ";
				}
				
				var metalLevel="";
				if ($("#platinum").is(":checked")) {
					metalLevel+="PLATINUM ";
				}
				if ($("#gold").is(":checked")) {
					metalLevel+="GOLD ";
				}
				if ($("#silver").is(":checked")) {
					metalLevel+="SILVER ";
				}
				if ($("#bronze").is(":checked")) {
					metalLevel+="BRONZE ";
				}
				if ($("#catastrophic").is(":checked")) {
					metalLevel+="CATASTROPHIC ";
				}
				
				var msg = "<strong>Market:</strong><span style='color:#E96D63'>"+market+"</span><br/>"+
						  "<strong>PlanType:</strong><span style='color:#E96D63'>"+plantype+"</span><br/>"+
						  "<strong>PlanType:</strong><span style='color:#E96D63'>"+metalLevel+"</span><br/>"+
						  "<strong>No of Applications:</strong> <span style='color:#E96D63'>"+d.properties.value +"</span>";
		
				return msg;    	
		    }
	
		})();
		
			
				
		</script>
				<!-- ----------------Map End Here -->
				
				<!-- AddThis Smart Layers BEGIN -->
<!-- Go to http://www.addthis.com/get/smart-layers to customize -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53692fa57c11d8d8"></script>
<script type="text/javascript">
  addthis.layers({
    'theme' : 'transparent',
    'share' : {
      'position' : 'left',
      'numPreferredServices' : 5
    }   
  });
</script>
<!-- AddThis Smart Layers END -->
</body>
</html>