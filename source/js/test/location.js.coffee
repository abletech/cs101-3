#= require models/location

describe "Location", ->
  beforeEach =>
    @subject = new Location("Abletech", -41.29161, 174.77278)

  it "constuctor should set variables", =>
    @subject.name.should.eq("Abletech")
    @subject.lat.should.eq(-41.29161)
    @subject.lng.should.eq(174.77278)

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
          "coordinates" : [-41.29161, 174.77278]
        "properties" :
          "name" : "Abletech"
