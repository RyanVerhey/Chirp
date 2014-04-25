// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function initMaps() {
  if($("#lat").text() === "") {
    var myLatLng = new google.maps.LatLng(39.060027, -95.952368)
    var mapOptions = {
      center: myLatLng,
      zoom: 3
    };
    var map = new google.maps.Map(document.getElementById("map"),
        mapOptions);
    } else {
    var myLatLng = new google.maps.LatLng(parseFloat($("#lat").text()), parseFloat($("#lon").text()))
    var mapOptions = {
      center: myLatLng,
      zoom: 15
    };
    var map = new google.maps.Map(document.getElementById("map"),
        mapOptions);

    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: $("#name").text()
    })
  }
}
