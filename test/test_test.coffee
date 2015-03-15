chai = require 'chai'
chai.should()
expect = chai.expect

# Test's test
describe 'Object', ->
  describe '#name', ->
    it 'should return Object name', ->
      objectName = Object.name
      objectName.should.equal 'Object'
      expect(objectName).to.equal 'Object'
