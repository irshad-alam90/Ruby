function ArticleService($http) {
  this.getOrder = function(){
    var req = {
      method: 'GET',
      url: CONFIG.URL + '/articles',
      headers: {
        'Content-Type': 'application/json'
        
      },
      data: {}
    };
    return $http(req)
  };
}

  

angular
  .module('app')
  .service('ArticleService', ArticleService)