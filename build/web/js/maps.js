function iniciarMap(){
    var coord = {lat:19.351197426703223 ,lng: -99.0639080573803};
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 80,
      center: coord
    });
    var marker = new google.maps.Marker({
      position: coord,
      map: map
    });
}