#第一節

1.Gemfile 要有 gem 'bootstrap-sass' ,並bundle

2.把 app/assets/stylesheets/application.css  .css 改為 .scss 並加入以下兩行註解
@import "bootstrap-sprockets";
@import "bootstrap";

3.Gemfile 要有 gem 'jquery-rails' 並在app/assets/javascript/application.js 加入以下
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require_tree .
（有些原本就有主要增加的是jquery and bootstrap的部份）

註:bootstrap的動態套件 相依jquery,所以必須要裝,不然之後有些功能會出現故障


#第二節


