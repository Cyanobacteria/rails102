#第一節

1.new action

2.create action

3.ActiveRecord

4.form(simple form? or?)

5.params?

結果:

CRUD幾乎都可以自己手刻不需要看，view的部份還不行,反而是view需要在加以熟悉

simple_form的bootstrap指針對form的部份，按鈕並沒有 需要再設定按鈕的class

partial 的渲染方式為 <%= render "form" %> 檔案為同一目錄下的_form.html.erb

params.require(:group).premit(:title, :description)
