$(document).ready(function() {
  $('.twitter-handle-form').submit(function () {
    $(this).children('button').html("<i class='fa fa-spin fa-circle-o-notch'></i>");
  })
  // $.get("http://ipinfo.io", function (response) {
  //   $('#location').html('Latitude: ' + response.loc.split(',')[0] + ', Longitude: ' + response.loc.split(',')[1]);
  // }, 'jsonp');
});

// https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=34.2281,-84.1780&radius=8050&key=AIzaSyA2ZrCZzsNpa4RCAXt9QumM9AVEAotfvws&rankby=prominence&types=(bar|cafe|restaurant)


// https://developers.google.com/places/documentation/details

// http://www.yelp.com/developers/documentation/v2/search_api

// http://www.rubydoc.info/gems/twitter

// https://dev.twitter.com/rest/public/search-by-place

