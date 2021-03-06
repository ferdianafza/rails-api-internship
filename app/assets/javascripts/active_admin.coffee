#= require active_admin/base

jQuery ->
  autocomplete = undefined
  input = undefined
  input = document.getElementById('post_location')
  if input
    autocomplete = new (google.maps.places.Autocomplete)(input)
    return autocomplete.addListener('place_changed', ->
      $('#post_latitude').val autocomplete.getPlace().geometry.location.lat()
      $('#post_longitude').val autocomplete.getPlace().geometry.location.lng()
    )
  return
