Cwe::Application.routes.draw do

  devise_for :users, :path_names => { :sign_up => "signup", :sign_in => "login", :sign_out => "logout" }

  resources :projects
  match "/users" => "profiles#index"
  match "/profile/:id" => "profiles#show"
  root :to => "home#index"
end
