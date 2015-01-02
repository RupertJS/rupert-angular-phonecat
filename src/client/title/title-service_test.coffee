describe 'Angular Phonecat', ->
  describe 'Title Service', ->
    beforeEach module 'phonecat.title-service'

    it 'has a good title', inject (TitleSvc)->
      TitleSvc.title.should.equal 'phonecat'
