<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>ISSUER & PLAN MARKETPLACE APPLICATION MAP</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link href="resources/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/slimmenu.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/switchy.css" />
</head>
<body>

<div id="PreWrapper"></div>

<div id="Wrapper">
	<div id="Header">
		<div id="social">
                <ul>
                	<li><a class="deviantart" href="#">Deviantart</a></li>
                    <li><a class="dribbble" href="#">Dribbble</a></li>
                    <li><a class="info" href="#">Info</a></li>
                </ul>
            </div>
	
	</div>
	<div id="PreContentWrapper"></div>
	<div id="ContentWrapper">

	<div id="Content">
		<div id="PreLoop"></div>
		<div id="Loop">
			<div class="post">
			<div id="title-header">
				<h1 class="title">ISSUER & PLAN MARKETPLACE UNIVERSE DASHBOARD </h1>
			</div>
			<!-- ----------------map and sidebar starts here ----------------- -->
			<div class="colmask leftmenu">
				<div class="colleft">
					

					<div class="col1"> 
						<!-- Column 1 start -->
						
						   <div id="col1-header"> 
								<div id="state-county">
									<table>
										<tr>
											<td> <strong> State </strong>
											</td>
											<td><select id='switch-me'>
									            <option value='state' selected="selected">state</option>
									            <option value='county'>county</option>
						          			</select>
											</td>
											<td> <strong> County </strong>
											</td>
											
										</tr>
									</table>
								</div>
							
								<div id="total-completed">
									<table >
										<tr>
											<td> <strong> Total Applications </strong>
											</td>
											<td><select id='tot-comp'>
									            <option value='total' selected="selected">total</option>
									            <option value='completed'>completed</option>
						          			</select>
											</td>
											<td> <strong> Completed Applications</strong>
											</td>
											
										</tr>
									</table>
								</div>
								
								<div id="date-header">
											<p> Data as of : 5/9/2014 11:10:11 AM</p>
										 	<p> Map Generated on: <label id="currentDate"></label> </p>
								</div>
							</div>												
							 <br/>
							 <div id="MapRightBarWrapper">
								 <div id ="MapWrapper">
									 <div id="map" >
									 </div>
									 <div id="legend" >
									 </div>
									 
									 <div id="export">
										 <button id="exportPdf"> Export to PDF</button>
										 <button id="exportPng"> Save As PNG  </button>
									 </div>
									  <!-- <div id="mpTable">
								 	   <table>
											<thead>
											<tr>
												<th>State Name</th>
												<th>Issuer Accounts</th>
												<th>Issuer Module(Pending)</th>
												<th>Benefit Module(Pending)</th>
												<th>Rating Module(Pending)</th>
												
											</tr>
											</thead>
											<tbody>
											<tr>
												<td>Alaska</td>
												<td>119</td>
												<td>2</td>
												<td>1</td>
												<td>1</td>
												
											</tr>
											<tr>
											  <td>Florida</td>
											  <td>530</td>
											  <td>0</td>
											  <td>4</td>
											  <td>1</td>
											</tr>
											<tr>
											  <td>Idaho</td>
											  <td>49</td>
											  <td>2</td>
											  <td>1</td>
											  <td>1</td>
											</tr>
											<tr>
											  <td>Texas</td>
											  <td>391</td>
											  <td>8</td>
											  <td>1</td>
											  <td>0</td>
											</tr>
											<tr>
											  <td>Virginia</td>
											  <td>51</td>
											  <td>38</td>
											  <td>37</td>
											  <td>35</td>
											</tr>
											</tbody>
										</table>
								 	 </div> -->
								 	 
								 	 
							 </div>
							 
								 </div>
								 <div id="RightBar">
								 	 <!-- --------Right Bar Starts here -->
								 	 
								 	 <div id="rightbar-widget" >
										
										<div class="summary-box">
											<p class="summary-lbl"> <label for="lblSummary"><strong>Summary: </strong></label></p>
											<hr>
											<table width="100%">
												<tr>
													<td width="60%">
														<label><strong>Total Applications</strong></label>
													</td>
													<td width="40%">
														<label>6831</label>
													</td>
												</tr>
												<tr>
													<td width="60%">
														<label><strong>Completed Applications</strong></label>
													</td>
													<td width="40%">
														<label>200</label>
													</td>
												</tr>
											</table>
											<hr>
											<p> <label for="lblPlanType">Plan Type:</label></p>
												<table width="100%">
													<tr>
														<td width="60%">
															<label><strong>HMO</strong></label>
														</td>
														<td width="40%">
															<label>1856</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>PPO</strong></label>
														</td>
														<td width="40%">
															<label>2784</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>EPO</strong></label>
														</td>
														<td width="40%">
															<label>268</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>POS</strong></label>
														</td>
														<td width="40%">
															<label>433</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>SADP</strong></label>
														</td>
														<td width="40%">
															<label>0</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>Indemnity</strong></label>
														</td>
														<td width="40%">
															<label>0</label>
														</td>
													</tr>
												</table>
												
											<hr>
											<p> <label for="lblMetalLevel">Metal Level:</label></p>
												<table width="100%">
													<tr>
														<td width="60%">
															<label><strong>Bronze</strong></label>
														</td>
														<td width="40%">
															<label>824</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>Silver</strong></label>
														</td>
														<td width="40%">
															<label>1202</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>Gold</strong></label>
														</td>
														<td width="40%">
															<label>983</label>
														</td>
													</tr>
													<tr>
														<td width="60%">
															<label><strong>Platinum</strong></label>
														</td>
														<td width="40%">
															<label>340</label>
														</td>
													</tr>
												</table>
										</div>
										
										<div class="box-layout">
											<div id="barChart"></div>
											<div>
												<table>
													<tr>
														<td> <div class="legend-total"></div></td>
														<td> Total Applications</td>
													</tr>
													<tr>
														<td> <div class="legend-complete"></div></td>
														<td> Completed Applications</td>
													</tr>
												</table>
											</div>
											
											
										</div>	
										
									</div>
								 	 
								 	
								 	 <!-- --------Right Bar ends here  -->
								 </div>
							 
							 
							 
						<!-- Column 1 end -->
					</div>
					
					
					<div class="col2">
						<!-- Column 2 start -->
						
						<!--  Menu starts here -->
						<div id="menuBar">
								<ul class="slimmenu">
								    <li>
								        <a href="#">IPMUR</a>
								        <ul>
								            <li><a href="counties.html">CCR</a></li>
								            <li><a href="twoStates.html">IPMAR</a></li>
								        </ul>
								    </li>
								</ul>												
						</div>
						<!--  Menu ends here -->
						<div id="marketplace-widget" class="ui-widget-content">
								<h3 class="ui-widget-header">Criteria</h3>
								<!-- --------------new layout starts here -->
							<div class="box-layout">
								<p> <strong>Plan Year:</strong></p>
									<select id="planyear-select">
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
									 </select>
								<hr>
								<p> <label for="lblDateRange"><strong>Date Range:</strong></label></p>
								<hr>
								<table>
									<tr>
										<td>
											<label>From :</label>
										</td>
										<td>
											<input type="text" id="fromDate">
										</td>
									</tr>
									<tr>
										<td>
											<label>To :</label>
										</td>
										<td>
											<input type="text" id="toDate"> 
										</td>
									</tr>
								</table>
								<hr>
								<p><label for="lblMarketPlace"><strong>MarketPlace:</strong></label><p>
								
								<!-- -------------------------- -->
									<!-- <table>
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="ffm" checked="checked"/>
													  	<label for="ffm"></label>
										  			</div>
									  			</td>
												<td> <label> FFM </label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="spm" checked="checked"/>
													  	<label for="spm"></label>
										  			</div>
									  			</td>
												<td> <label> SPM </label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="ssbm" checked="checked"/>
													  	<label for="ssbm"></label>
										  			</div>
									  			</td>
												<td> <label> SSBM </label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="mp-all" checked="checked"/>
													  	<label for="mp-all"></label>
										  			</div>
									  			</td>
												<td> <label> All </label></td>
											</tr>
											
										</table> -->
										
										<div id="marketplace">
											<input type="checkbox" id="ffm"><label for="ffm">FFM</label>
											<input type="checkbox" id="spm"><label for="spm">SPM</label>
											<input type="checkbox" id="ssbm"><label for="ssbm">SSBM</label>
										</div>
								
								<!-- -------------------------- -->
								<hr>
								<p><label for="lblCoverageType"><strong>CoverageType:</strong></label></p>
								
									<div id="coverage-type-select">
										<input type="checkbox" id="qhp" name="qhp"><label for="qhp">QHP</label>
										<input type="checkbox" id="sadp" name="sadp" ><label for="sadp">SADP</label>
									</div>
									<!-- <select id="coverage-type-select">
										<option value="QHP">QHP</option>
										<option value="SADP">SADP</option>
									 </select> -->
							
							</div>
							
							<div class="box-layout">
								<p><label for="lblMarket"><strong>Market:</strong></label><p>
								
									<table>
										<tr>
											<td> 
												<div class="mp-checkbox">
											  		<input type="checkbox" id="individual" checked="checked"/>
												  	<label for="individual"></label>
									  			</div>
								  			</td>
											<td> <label> Individual</label></td>
										</tr>
										
										<tr>
											<td> 
												<div class="mp-checkbox">
											  		<input type="checkbox" id="shop" checked="checked"/>
												  	<label for="shop"></label>
									  			</div>
								  			</td>
											<td> <label> SHOP</label></td>
										</tr>
										
										
									</table>
									
								<hr>
								<p><label for="lblPlanType"><strong>Plan Type:</strong></label><p>
								
									<table>
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="ppo" checked="checked"/>
													  	<label for="ppo"></label>
										  			</div>
									  			</td>
												<td> <label> PPO</label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="hmo" checked="checked"/>
													  	<label for="hmo"></label>
										  			</div>
									  			</td>
												<td> <label> HMO</label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="epo" checked="checked"/>
													  	<label for="epo"></label>
										  			</div>
									  			</td>
												<td> <label> EPO</label></td>
											</tr>
											
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="pos" checked="checked"/>
													  	<label for="pos"></label>
										  			</div>
									  			</td>
												<td> <label> POS</label></td>
											</tr>
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="indemnity" checked="checked"/>
													  	<label for="indemnity"></label>
										  			</div>
									  			</td>
												<td> <label> Indemnity</label></td>
											</tr>
										</table>
								
									
								<hr>
								<p><label for="lblMetalLevel"><strong>Metal Level:</strong></label><p>
								
								<table>
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="platinum" checked="checked"/>
													  	<label for="platinum"></label>
										  			</div>
									  			</td>
												<td> <label> Platinum</label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="gold" checked="checked"/>
													  	<label for="gold"></label>
										  			</div>
									  			</td>
												<td> <label> Gold</label></td>
											</tr>
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="silver" checked="checked"/>
													  	<label for="silver"></label>
										  			</div>
									  			</td>
												<td> <label> Silver </label></td>
											</tr>
											
											
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="bronze" checked="checked"/>
													  	<label for="bronze"></label>
										  			</div>
									  			</td>
												<td> <label> Bronze </label></td>
											</tr>
											<tr>
												<td> 
													<div class="mp-checkbox">
												  		<input type="checkbox" id="catastrophic" checked="checked"/>
													  	<label for="catastrophic"></label>
										  			</div>
									  			</td>
												<td> <label> Catastrophic</label></td>
											</tr>
										</table>
								
							</div>	
							
								<div id="submit-set">
									<input type="radio" id="submit" name="submit"><label for="submit">Submit</label>&nbsp;
									<input type="radio" id="reset" name="reset"><label for="reset">Reset</label>
								</div>
							<!-- --------------new layout ends here -->
						</div>
						
						<!-- Column 2 end -->
					</div>
					
				</div>
			</div>
			
			<!-- ----------------map and sidebar ends here  ---------------------->
			</div>
		</div>
		<div id="PostLoop"></div>
	</div>
	
</div>
	<div id="PostContentWrapper"></div>
	<div id="Footer"><strong>CCIIO Plan Management </strong></div>
</div>

<div id="PostWrapper"></div>

<div id="Columns">
	<div id="Column1"></div>
	<div id="Column2"></div>
	<div id="Column3"></div>
</div>

	<script src="resources/js/jquery-1.10.2.js"></script>
	<script src="resources/js/jquery-ui-1.10.4.custom.js"></script>
	<script src="resources/js/jquery.corner.js"></script>
	<script src="resources/js/default.js"></script>
	<script src="http://d3js.org/d3.v3.min.js"></script>
	<script src="http://labratrevenge.com/d3-tip/javascripts/d3.tip.v0.6.3.js"></script>
	<script src="resources/js/jquery.slimmenu.min.js"></script>
	<script src="resources/js/switchy.js"></script>

	<script>
		$(function() {
			
			//$( "#market-set" ).buttonset();
			//$( "#plantype-set" ).buttonset();
			//$( "#metallevel-set" ).buttonset();
			$( "#submit-set" ).buttonset();
			
			var dNow = new Date();
			//var utc = new Date(dNow.getTime() + dNow.getTimezoneOffset() * 60000)
			//var utcdate= (utc.getMonth()+1) + '/' + utc.getDate() + '/' + utc.getFullYear() + ' ' + utc.getHours() + ':' + utc.getMinutes();
			//$('#currentDate').text(utcdate);
			$('#currentDate').text(dNow.toLocaleString());
			
			
			$( "#fromDate" ).datepicker({
			/* 	 changeMonth: true,
				 changeYear: true */
				 showOn: "button",
				 buttonImage: "resources/css/images/calendar.gif",
				 buttonImageOnly: true
			}); 
			
			 
			$( "#toDate" ).datepicker({
				 /* changeMonth: true,
				 changeYear: true */
				 showOn: "button",
				 buttonImage: "resources/css/images/calendar.gif",
				 buttonImageOnly: true
			});	 
			
			$( "#marketplace-widget" ).resizable({
				 grid: 50
			 });
			 
			$("#marketplace").buttonset();
			$("#coverage-type-select").buttonset();
			//$("#planyear-select").combobox();
			
			$("#exportPdf").button();
			$("#exportPng").button();
			
		});	
	</script>

<!-- ----------------Map Start Here -->
			
				 <script type="text/javascript">
		/************************* Map code starts here ******************************/
		(function() {
				//Width and height
				var w = 840;
				var h = 600;
				var maxscale = 7;
				var formatPercent = d3.format(".0%")
				
				//Define map projection
				var projection = d3.geo.albersUsa()
									   .translate([w/2, h/2])
									   .scale([1000]);
			
				//Define path generator
				var path = d3.geo.path()
								 .projection(projection);
								 
				//Define quantize scale to sort data values into buckets of color
				var color = d3.scale.quantize().domain(0,100,500,1000,2000,5000,10000)
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
						            .text(function (d) { return d.properties.value; });
						           
							
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
		
				$('#market-both').click(function () {
					if ($("#market-both").is(":checked")) {
						$(".individual").prop('checked', true);
						$(".shop").prop('checked', true);
					}
				});
				
				$('#pt-all').click(function () {
					if ($("#pt-all").is(":checked")) {
						$(".ppo").prop('checked', true);
						$(".hmo").prop('checked', true);
						$(".epo").prop('checked', true);
						$(".pos").prop('checked', true);
						$(".indemnity").prop('checked', true);
					}
					
				});

				$('#ml-all').click(function () {
					if ($("#ml-all").is(":checked")) {
						$(".platinum").prop('checked', true);
						$(".gold").prop('checked', true);
						$(".silver").prop('checked', true);
						$(".bronze").prop('checked', true);
						$(".catastrophic").prop('checked', true);
					}
					

				    $('a').hover(
				    function(){
				        $(this).stop().fadeIn('slow');
				    },
				    function(){
				        $(this).stop().fadeTo('slow');
				    });	
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
					var pt_all = true;
					
					// metal level
					var platinum = true;
					var gold = true;
					var silver = true;
					var bronze = true;
					var catastrophic = true;
					var ml_all = true;
					
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
					if (!$("#pt_all").is(":checked")) {
						pt_all = false;
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
					if (!$("#ml_all").is(":checked")) {
						ml_all = false;
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
								
								if(jsonState == "Texas") {
									
										if(pt_all) {
											json.features[j].properties.value = "1623";
										}else if (individual && ppo && platinum) {
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
									if(pt_all) {
										json.features[j].properties.value = "4930";
									}else if (individual && ppo && platinum) {
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
						  "<strong>Metal Level:</strong><span style='color:#E96D63'>"+metalLevel+"</span><br/>"+
						  "<strong>No of Applications:</strong> <span style='color:#E96D63'>"+d.properties.value +"</span>";
		
				return msg;    	
		    }
		    
		    
		    // Bar Chart starts here 
		    
		    var bMargin = {top: 40, right: 50, bottom: 40, left: 40},
			    bWidth = 250 - bMargin.left - bMargin.right,
			    bHeight = 400 - bMargin.top - bMargin.bottom;
			
			var bX = d3.scale.ordinal()
			    .rangeRoundBands([0, bWidth], .1);
			
			var bY0 = d3.scale.linear().domain([300, 1100]).range([bHeight, 0]),
			bY1 = d3.scale.linear().domain([20, 80]).range([bHeight, 0]);
			
			var bxAxis = d3.svg.axis()
			    .scale(bX)
			    .orient("bottom");
			
			// create left yAxis
			var byAxisLeft = d3.svg.axis().scale(bY0).ticks(4).orient("left");
			// create right yAxis
			var byAxisRight = d3.svg.axis().scale(bY1).ticks(6).orient("right");
			
			svg1 = d3.select("#barChart").append("svg")
			    .attr("width", bWidth + bMargin.left + bMargin.right)
			    .attr("height", bHeight + bMargin.top + bMargin.bottom)
			  .append("g")
			    .attr("class", "graph")
			    .attr("transform", "translate(" + bMargin.left + "," + bMargin.top + ")");
			
			d3.tsv("resources/data/barData.tsv", type, function(error, data) {
			  bX.domain(data.map(function(d) { return d.coverage; }));
			  bY0.domain([0, d3.max(data, function(d) { return d.apps; })]);
			  
			  svg1.append("g")
			      .attr("class", "x axis")
			      .attr("transform", "translate(0," + bHeight + ")")
			      .style("font-weight", "bold")
			      .style("font-size", "8px")
			      .call(bxAxis);
			
			  svg1.append("g")
				  .attr("class", "y axis axisLeft")
				  .attr("transform", "translate(0,0)")
				  .call(byAxisLeft)
				.append("text")
				  .attr("y", 6)
				  .attr("dy", "-2em")
				  .style("text-anchor", "end")
				  .style("text-anchor", "end")
				  .text("Total");
				
			  svg1.append("g")
				  .attr("class", "y axis axisRight")
				  .attr("transform", "translate(" + (bWidth) + ",0)")
				  .call(byAxisRight)
				.append("text")
				  .attr("y", 6)
				  .attr("dy", "-2em")
				  .attr("dx", "2em")
				  .style("text-anchor", "end")
				  .text("Complete");
			
			  bars = svg1.selectAll(".bar").data(data).enter();
			
			  bars.append("rect")
			      .attr("class", "bar1")
			      .attr("x", function(d) { return bX(d.coverage); })
			      .attr("width", bX.rangeBand()/2)
			      .attr("y", function(d) { return bY0(d.apps); })
				  .attr("height", function(d,i,j) { return bHeight - bY0(d.apps); }); 
			
			  bars.append("rect")
			      .attr("class", "bar2")
			      .attr("x", function(d) { return bX(d.coverage) + bX.rangeBand()/2; })
			      .attr("width", bX.rangeBand() / 2)
			      .attr("y", function(d) { return bY1(d.number); })
				  .attr("height", function(d,i,j) { return bHeight - bY1(d.number); }); 
			
			});
			
			function type(d) {
			  d.apps = +d.apps;
			  return d;
			}
		    
		    // Bar Chart ends here
		
		})();
		
			
				
		</script>
	<!-- ----------------Map End Here -->
	<script>
		$('ul.slimmenu').slimmenu(
		{
		    resizeWidth: '800',
		    collapserTitle: 'Main Menu',
		    easingEffect:'easeInOutQuint',
		    animSpeed:'medium',
		    indentChildren: true,
		    childrenIndenter: '&raquo;'
		});
		$('#switch-me').switchy();
		$('#tot-comp').switchy();
		
	</script>
	
	
		
	<!-- Go to http://www.addthis.com/get/smart-layers to customize -->
	<!-- <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53692fa57c11d8d8"></script>
	<script type="text/javascript">
	  addthis.layers({
	    'theme' : 'transparent',
	    'share' : {
	      'position' : 'left',
	      'numPreferredServices' : 5
	    }   
	  });
	</script> -->
	<!-- AddThis Smart Layers END -->

</body>
</html>