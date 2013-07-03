describe 'Array', ->
  before =>
    @subject = [1,2,3]

  it "should be an array object", =>
    @subject.should.be.a("array")

  describe '#indexOf()', =>
    it 'should return -1 when the value is not present', =>
      @subject.indexOf(5).should.equal(-1);
      @subject.indexOf(0).should.equal(-1);
