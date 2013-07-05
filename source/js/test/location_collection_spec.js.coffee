describe "LocationCollection", ->
  beforeEach =>
    @subject = new LocationCollection(new Location("Location1", 0, -179), new Location("Location2", 45, 90))

  it "should set class variables", =>
    expect(@subject.locations).not.be.undefined

  describe "#boundingBox()", =>
    beforeEach =>
      @subject = @subject.boundingBox()

    it "should return [sw,ne] point array", =>
      @subject.should.deep.eq([-179, 0], [90, 45])

  describe "#asGeoJSON()", =>
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
