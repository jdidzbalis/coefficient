Coefficient::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'howitworks' => 'pages#howitworks'
  
end
