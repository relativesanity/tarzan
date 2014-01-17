Tarzan::Application.routes.draw do

  root :to => 'articles#index'

  match 'feed' => 'articles#list', :format => :rss
  match 'articles/rss.xml', :to => redirect('/feed')
  match 'articles/atom.xml', :to => redirect('/feed')

  match 'articles/:slug' => 'articles#show'
  match 'articles' => 'articles#list'

  match 'previews/:slug' => 'previews#show'
  match 'previews' => 'previews#index'
  match 'reload' => 'previews#reload'

end
