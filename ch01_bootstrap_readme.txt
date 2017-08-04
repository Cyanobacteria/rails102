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

上一節設定bootstrap所需的環境
這一節要讓全站的頁面套上bootstrap

1.mkdir app/views/common

2.touch app/views/common/_navbar.html.erb
  touch app/views/common/_footer.html.erb
為頁首尋覽列 與 頁尾的 partial

3.vi app/views/layouts/application.html.erb 加入
  <%= render "common/navbar" %>
  <%= render "common/footer" %>
  在框架頁上渲染nav and footer

4.增加相應的其他頁面ex:一個靜態頁面

5.增加頁面使用的controller and route 來達成MVC

註:頁面渲染的形式是 application夾nav and footer 再夾其他頁面,一個一層一層的概念最後渲染出來
    route > conterller > action >view（上面講的是views的部份）

遭遇問題：

1.routes get '/hihi', to: 'hihi#hihi' 忘記加 ,

2.hihi_controller.rb 的hihi action
  就是對應到views/hihi/hihi.html.erb 而非 views/hihis/hihihtml.erb

3.對block的理解不夠精確 5.times do |x| 印出的x是0 1 2 3 4（多了解一點）


#第三節

1.須引入 //= require bootstrap/alert
  （第一節引入過了,原著上是這裡才引入,
    但是我做此教材第一次的時候在後面章節遇到jquery未載入的問題,
    除掉bug後把解法寫下來,就直接套用在第一章了,在此特別註明）

2.新增 app/views/common/_flashes.html.erb
       app/helpers/flashes_helper.rb
       並在app/views/layout/application.htm.erb 裡面加入 <%= render "common/flashes" %>

3.用法 在action 加入
  flash[:notice]  綠
  flash[:alert]   紅
  flash[:warning] 黃









