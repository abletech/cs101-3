#= require_tree ./models
#= require_self


locations = [
  new Location "Abletech", -41.29161, 174.77278
  new Location "NZ Post", -41.28120, 174.77925
  new Location "Loyalty", -41.28996, 174.77952
  new Location "Radio NZ", -41.28500, 174.77410
  new Location "MSD", -41.27788, 174.77421
]
window.onload = ->
  map = L.map('map').setView([-41.2864, 174.7764], 14)

  layer = new L.StamenTileLayer("toner-lite")
  layer.addTo(map)

  features = for location in locations
     location.asGeoJSON()

  L.geoJson({"type": "Feature", "features": features}).addTo(map)



