describe "Location", ->
  beforeEach =>
    @subject = new Location("Location1", 0, -180)

  it "constuctor should set class variables", =>
    @subject.name.should.eq("Location1")
    @subject.lat.should.eq(0)
    @subject.lng.should.eq(-180)

  describe "#asGeoJSON()", =>
    beforeEach =>
      @subject = @subject.asGeoJSON()

    it "should return object", =>
      @subject.should.exist
      @subject.should.be.a "object"

    it "should return geojson", =>
      @subject.should.deep.eq
        "type" : "Feature"
        "geometry" :
          "type" : "Point"
          "coordinates" : [-180, 0]
        "properties" :
          "name" : "Location1"
