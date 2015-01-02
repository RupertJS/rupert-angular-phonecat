describe.skip 'Phones API', ->
  it 'returns a list of phones', (done) ->
    route = require('./route')
    test = superroute(route)
    console.log "====", test, route
    test.get('/phones')
    test.expect(200)
    test.end(done)
