#= require_tree ./models
#= require_self

window.onload = ->
  map = L.map('map').setView([-41.2864, 174.7764], 14)

  layer = new L.StamenTileLayer("toner-lite")
  layer.addTo(map)



