Coefficient::Application.routes.draw do
  resources :projects do
  	resources :project_steps, controller: 'project_steps'
  end
  

  devise_for :users

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'partners' => 'pages#partners'
  get 'submit' => 'pages#submit'
  get 'financing' => 'pages#financing'

  match "user_root" => "projects#index"
end
