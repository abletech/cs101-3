class window.Location
  constructor: (@name, @lat, @lng)->

  asGeoJSON: ->
    "type" : "Feature"
    "geometry" :
      "type" : "Point"
      "coordinates" : [@lng,  @lat]
    "properties" :
      "name" : @name
