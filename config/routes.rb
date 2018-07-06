Rails.application.routes.draw do
  devise_for :users
  get "/jquery-1" => "pages#jquery_1"
  get "/jquery_2" => "pages#jquery_2"
  get "/jquery_3" => "pages#jquery_3"
  get "/jquery_4" => "pages#jquery_4"
  get "/jquery_5" => "pages#jquery_5"
  get "/jquery_6" => "pages#jquery_6"
  get "/jquery_7" => "pages#jquery_7"
  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
    end
  end
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
