var map;
var markers = [];
var LatLng = { lat: 37.09, lng: -95.71};
var ltlg;
var arrayOfCities = [];

$( document ).ready(function() {
	$(".player").YTPlayer();
});
 // ex: https://maps.googleapis.com/maps/api/geocode/xml?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=API_KEY

 function renderMap(loc){
	// var loc = $('.act-loc').text();
	var address = loc.replace(" ","+");	
	$.get("https://maps.googleapis.com/maps/api/geocode/json?", { "address" : address}, function (data) {
	ltlg = data.results[0].geometry.location;

	getCityMap();
	getEventMap();

	});
 }


//  function getEventMap(){
//  		map = new google.maps.Map(document.getElementById('event-map'), {
//  			center: ltlg,
//  			zoom: 10
//  		});
//  }

// function getCityMap(){
// 	map = new google.maps.Map(document.getElementById('city-map'), {
// 		center: ltlg,
// 		zoom: 11
// 	});
// }

function makeMap(selector, config) {
	map = new google.maps.Map(document.getElementById(selector), {
		center: config.center,
		zoom: config.zoom || 10
	});
}

 function citiesLntLng(cityNames){

 	cityNames.forEach(function(city){
	 	var oneCity = city.replace(" ","+");
	 	$.get("https://maps.googleapis.com/maps/api/geocode/json?" , { "address" : oneCity}, function (response){
	 		LatLng = response.results[0].geometry.location;
	 		console.log("this is lat and long" , LatLng);
	 		markerPush(LatLng)
	 	});	
 	});
 	
 }
 	function markerPush(latsNlongs){
		// for(var i = 0;i<=latsNlongs.length;i++) {
			var marker = new google.maps.Marker({
				position: latsNlongs,
				map: map
			})
		// }

		// markers.push(marker);
		// console.log(markers);
		// setMapOnAll(bigMap);
 	}


// function setMapOnAll(map) {
// 	for (var i = 0; i < markers.length; i++) {
// 		markers[i].setMap(map);
// 	}
// };


// 	function markerPush(arr) {
// 		arr.forEach(function(el) {
// 			link = el.name.replace(/\s/g, '-')
// 			var marker = new google.maps.Marker({
// 				position: el.LatLng,
// 				map: map,
// 				url: "http://localhost:3000/cities/" + link,
// 				title: el.name
// 		})
// 			var info = createInfoWindow(el.description);
// 		google.maps.event.addListener(marker, 'mouseover', function() {
// 			info.open(map,marker);
// 		});
// 		google.maps.event.addListener(marker, 'mouseout', function() {
// 			info.close(map,marker);
// 		});
// 		google.maps.event.addListener(marker, 'click', function() {
// 			window.location.href =  marker.url;
// 		});
// 			markers.push(marker)
// 		});
// 	};

// 	function setMapOnAll(map) {
// 		for (var i = 0; i < markers.length; i++) {
// 			markers[i].setMap(map);
// 		}
// 	};

// 	function createInfoWindow(text){
// 		var infowindow = new google.maps.InfoWindow({
// 			content: text
// 		});
// 		return infowindow;
// 	}
// });

