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
