function MainCtrl(ArticleService){
	var vm = this;
	vm.getArticles = function(){
		ArticleService.getArticles().success(function(data){
			vm.articles = data;
			console.log($scope.articles);
		})
	}
}

angular
	.module('app')
	.controller("MainCtrl", MainCtrl);
