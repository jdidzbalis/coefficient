Coefficient::Application.routes.draw do
  resources :projects


  devise_for :users

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'howitworks' => 'pages#howitworks'
  get 'submit' => 'pages#submit'
  get 'financing' => 'pages#financing'
end
