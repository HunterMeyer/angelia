$(document).ready(function() {
  $.get("http://ipinfo.io", function (response) {
    $('#location').html('Latitude: ' + response.loc.split(',')[0] + ', Longitude: ' + response.loc.split(',')[1]);
  }, 'jsonp');
});
