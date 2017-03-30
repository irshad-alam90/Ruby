angular
	.module('app',['ui.router','templates'])
	.config(['$stateProvider','$urlRouterProvider', 
		function($stateProvider, $urlRouterProvider){
			$stateProvider
			.state('home',{
				url: '/home',
				templateUrl: '_home.html',
				contorller: 'MainCtrl'
			})

			.state('create',{
				url: '/create',
				templateUrl: 'create_article.html',
				controller: 'MainCtrl'
			})

			.state('articles',{
				url: '/articles',
				templateUrl: 'articles.html',
				controller: 'MainCtrl'
				
			})

			$urlRouterProvider.otherwise('home');
		}]); 