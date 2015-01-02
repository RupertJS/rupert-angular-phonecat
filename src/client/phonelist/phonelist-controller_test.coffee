describe 'phonelist controller', ->
  beforeEach module 'phonecat.phonelist-controller'

  sut = null

  beforeEach inject ($controller) ->
    sut = $controller 'PhoneListController'

  it 'has a list of phones', ->
    sut.phones.length.should.equal 3

  it 'sets default order property', ->
    sut.orderProp.should.equal 'age'
