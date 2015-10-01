Rails.application.routes.draw do  resources :user_links
  devise_for :users


  get '/' => 'feed#index'
end
