Rails.application.routes.draw do
  get 'friends/new'
  get 'friends/show'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

  get 'top' => 'root#top'#画面を表示したいからGETでどのURLにアクセスした時に、どのコントールのどのアクションを呼び出すかの設定でこれはURLのTOPにアクセスした時に、rootコントローラのtopアクションが呼び出されるように設定


  root to: 'home#index'

end
