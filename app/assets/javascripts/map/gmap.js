
/*Global Variables*/
var map;
var markers = [];
var LatLng = { lat: 37.09, lng: -95.71};
var ltlg;
var arrayOfCities = [];
var placeSearch;
var autocomplete;
var defaultBounds; 


/*On page load function*/

$( document ).ready(function() {

	$(".player").YTPlayer();

});


/*Function renderMap gets coordinates for a given location*/
/*On success call MakeCityEventMap to render city events on a map*/

function renderMap(loc, htmlTag){

	var address = loc.replace(" ","+") || "SanFrancisco";	
	
	$.get("https://maps.googleapis.com/maps/api/geocode/json?", { "address" : address}, function (data) {
		
		ltlg = data.results[0].geometry.location;
		
		MakeCityEventMap(ltlg, htmlTag);

	});
}


/* Events markes will be originated once map has been rendered */

function MakeCityEventMap(point, idHTMLtag){
	
	map = new google.maps.Map(document.getElementById(idHTMLtag), {
		center: point,
		zoom:12,
		zoomControl: false,
		scaleControl: false,
		scrollwheel: false,
		disableDoubleClickZoom: true

		});

	markerPush(point)
}


function makeMap(selector, config) {
	
	map = new google.maps.Map(document.getElementById(selector), {
		center: config.center,
		zoom: config.zoom || 10
		});
}


/*Function finds the latitude and longitude of the cities passed in the array CityNames*/

function citiesLntLng(cityNames){
	cityNames.forEach(function(city){
		
		var oneCity = city.replace(" ","+");
		
		$.get("https://maps.googleapis.com/maps/api/geocode/json?" , { "address" : oneCity}, function (response){
			
			LatLng = response.results[0].geometry.location;
			
			markerPush(LatLng)
			}
		});

}

/*Function builds marker when receive. No need to build an arrays of objects*/

function markerPush(latsNlongs){
	var marker = new google.maps.Marker({
	position: latsNlongs,
	map: map
	});
}


/*Google autocomplete implementation*/


/*Create the autocomplete object, restricting the search to geographical*/

defaultBounds = new google.maps.LatLngBounds(
new google.maps.LatLng(71.3867745,-66.9502861),
new google.maps.LatLng(18.9110642,172.4458955)
);

var options = {
bounds: defaultBounds
};

function initAutocomplete() {

autocomplete = new google.maps.places.Autocomplete((document.getElementById('autocomplete')), options);

}
