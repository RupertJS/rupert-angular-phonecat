describe 'phonelist controller', ->
  beforeEach module(
    'phonecat.phonelist-controller',
    'phonecat.phonelist-controller_mock'
  )

  sut = null

  beforeEach inject (PhoneMocks)->
    httpBackend PhoneMocks, afterEach

  beforeEach inject ($controller, $httpBackend) ->
    sut = $controller 'PhoneListController'
    $httpBackend.expectGET '/phones'
    $httpBackend.flush()

  it 'has a list of phones', ->
    sut.phones.length.should.equal 3

  it 'sets default order property', ->
    sut.orderProp.should.equal 'age'
