import "phoenix_html";

import DiffController from './controllers/diff-controller';

angular.module('phoenixDiff', [
  "ngAnimate"
])
  .config(['$locationProvider', $locationProvider => {
    $locationProvider.html5Mode({enabled: true, requireBase: true, rewriteLinks: false});
  }])
  .controller("DiffController", DiffController);
