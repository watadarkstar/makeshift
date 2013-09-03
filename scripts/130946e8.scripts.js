!function(){"use strict";angular.module("makeshiftApp",[]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/main.html",access:{user:!1}}).when("/login",{templateUrl:"views/login.html",access:{user:!1}}).when("/authenticate",{templateUrl:"views/authenticate.html",controller:"AuthenticateCtrl",access:{user:!1}}).when("/user/:id/project/:id/",{templateUrl:"views/view.html",access:{user:!1}}).when("/project/new",{templateUrl:"views/new.html",access:{user:!0}}).when("/project/:id/edit",{templateUrl:"views/edit.html",access:{user:!0}}).otherwise({redirectTo:"/",access:{user:!1}})}]).run(["$location","$rootScope","User",function(a,b,c){return b.$on("$routeChangeStart",function(b,d){if(null!=c.user){if("views/login.html"===d.templateUrl)return a.path("views/main")}else if(null!=d.access&&d.access.user)return a.path("/")})}])}.call(this),function(){"use strict";angular.module("makeshiftApp").controller("MainCtrl",["$scope","$rootScope","User",function(a,b,c){return b._=_,a.User=c,a.$watch(function(){return c.user},function(){return a.User=c})}])}.call(this),function(){"use strict";angular.module("makeshiftApp").service("User",["$location","Env",function(a,b){var c,d;return console.log($.cookie),$.cookie.json=!0,d=$.cookie("user"),c=null!=d?{user:d}:{user:null,auth_token:null},c.loginTwitter=function(){var a;return a="http://makeshift-rails.herokuapp.com/signin?callback_url="+encodeURIComponent(b.domain+"#/authenticate"),window.location=a},c.authenticate=function(a){return c.user={auth_token:a},$.cookie("user",c.user)},c.logout=function(){return c.user=null,$.removeCookie("user"),a.path("/")},c}])}.call(this),function(){"use strict";angular.module("makeshiftApp").service("Project",function(){})}.call(this),function(){"use strict";angular.module("makeshiftApp").controller("AuthenticateCtrl",["$scope","$routeParams","User",function(a,b,c){return null!=b.auth_token?c.authenticate(b.auth_token):void 0}])}.call(this),function(){"use strict";angular.module("makeshiftApp").service("Env",function(){var a;return a={env:"local"},a.domain=location.href.replace(location.hash,""),a.isLocal=function(){return"local"===env},a.isDev=function(){return"dev"===env},a.isProd=function(){return"prod"===env},a})}.call(this),function(){"use strict";angular.module("makeshiftApp").service("Baseapi",function(){})}.call(this);