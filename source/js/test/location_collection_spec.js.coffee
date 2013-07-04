describe "LocationCollection", ->
  beforeEach =>
    @subject = new LocationCollection(new Location("Location1", 0, -180), new Location("Location2", 45, 90))

  it "should set class variables", =>
    expect(@subject.locations).not.be.undefined

  describe "#asGeoJSON", =>
    beforeEach =>
      @subject = @subject.asGeoJSON()

    it "should have correct number of features", =>
      @subject["features"].should.exist
      @subject["features"].length.should.eq(2)

    it "should return geojson", =>
      @subject.should.deep.eq
        "type": "FeatureCollection",
        "features": [{
          "type" : "Feature"
          "geometry" :
            "type" : "Point"
            "coordinates" : [-180, 0]
          "properties" :
            "name" : "Location1"
        },{
          "type" : "Feature"
          "geometry" :
            "type" : "Point"
            "coordinates" : [90, 45]
          "properties" :
            "name" : "Location2"
        }]
