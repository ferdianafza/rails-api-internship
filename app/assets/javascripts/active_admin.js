//= require active_admin/base

jQuery(function() {
  var autocomplete, input;
  input = document.getElementById("post_location");
  if (input) {
    autocomplete = new google.maps.places.Autocomplete(input);
    return autocomplete.addListener("place_changed", function() {
      $("#post_latitude").val(autocomplete.getPlace().geometry.location.lat());
      return $("#post_longitude").val(autocomplete.getPlace().geometry.location.lng());
    });
  }
});