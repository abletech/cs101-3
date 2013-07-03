describe 'Array', ->
  beforeEach =>
    @subject = [1,2,3]

  it "should be an array object", =>
    @subject.should.be.a("array")

  it "should have correct length", =>
    @subject.length.should.equal(3)

  it "should fail", =>
    @subject.should.not.exist

  it "should be pending"


  describe "#push()", =>
    beforeEach =>
      @subject.push(5)

    it "should append new value", =>
      @subject.indexOf(5).should.equal(3)

    it "should increase the length", =>
      @subject.length.should.equal(4)


  describe '#indexOf()', =>
    it 'should return -1 when the value is not present', =>
      @subject.indexOf(5).should.equal(-1);
      @subject.indexOf(0).should.equal(-1);

    it "should return correct indexes", =>
      @subject.indexOf(1).should.equal(0)
      @subject.indexOf(2).should.equal(1)
      @subject.indexOf(3).should.equal(2)



