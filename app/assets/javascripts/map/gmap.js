var map;
var markers = [];
var LatLng = { lat: 37.78, lng: -122.44};
var ltlg;

// $(document).ready( function (){
// 	// markerPush(maparr)
// 	getMapCitiesIndex();
// 	getMapCityShow();
// 	setMapOnAll(map);

// });
// function locHandler () { 

//         var locArray = $('.act-loc').val().split(" ");
//         var addr = locArray.join("+");
//         $.get("https://maps.googleapis.com/maps/api/geocode/json?", { "address" : addr}, function (data) {
//             LatLng = data.results[0].geometry.location;
            
//         getMap();
//         })
// }

$( document ).ready(function() {
	$(".player").YTPlayer();

	function renderMap(){
		var loc = $('.act-loc').text();
		console.log("expecting", loc);
		var address = loc.replace(" ","+");

		$.get("https://maps.googleapis.com/maps/api/geocode/json?", { "address" : address}, function (data) {
			ltlg = data.results[0].geometry.location;
			getActMap();
		});
	};

	function getActMap(){
		map = new google.maps.Map(document.getElementById('eventshow-city-map'), {
			center: ltlg,
				zoom: 10
		});
	};

	function getMapCitiesIndex () {
		map = new google.maps.Map(document.getElementById('map-canvas'), {
			center: LatLng,
				zoom: 3
		});	
	};

	function getMapCityShow(){
		map = new google.maps.Map(document.getElementById('city-map'), {
			center: LatLng,
				zoom: 11
		});
		console.log("sanitywhat?")
	};

function getMap () {

	map = new google.maps.Map(document.getElementById('eventshow-map-canvas'), {
		center: LatLng,
		zoom: 3
	});
	console.log("sanity")

	
};

	function markerPush(arr) {
		arr.forEach(function(el) {
			link = el.name.replace(/\s/g, '-')
			var marker = new google.maps.Marker({
				position: el.LatLng,
				map: map,
				url: "http://localhost:3000/cities/" + link,
				title: el.name
		})
			var info = createInfoWindow(el.description);
		google.maps.event.addListener(marker, 'mouseover', function() {
			info.open(map,marker);
		});
		google.maps.event.addListener(marker, 'mouseout', function() {
			info.close(map,marker);
		});
		google.maps.event.addListener(marker, 'click', function() {
			window.location.href =  marker.url;
		});
			markers.push(marker)
		});
	};

	function setMapOnAll(map) {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(map);
		}
	};

	function createInfoWindow(text){
		var infowindow = new google.maps.InfoWindow({
			content: text
		});
		return infowindow;
	}
});
