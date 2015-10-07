var map;
var markers = [];
var LatLng = { lat: 40.00, lng: -30.00};

$( document ).ready(function() {
      $(".player").YTPlayer();
});


$(document).ready( function (){
	// markerPush(maparr)
	getMap();
	setMapOnAll(map);

});



function getMap () {

	map = new google.maps.Map(document.getElementById('map-canvas'), {
		center: LatLng,
		zoom: 3
	});
	console.log("sanity")

	
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
