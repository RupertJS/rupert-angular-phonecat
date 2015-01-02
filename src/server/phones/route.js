var phones = require('./phones');

module.exports = function(app){
  app.get('/phones', function(request, response){
    response.send(phones);
  });
};
