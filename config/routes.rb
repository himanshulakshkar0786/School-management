Rails.application.routes.draw do
  devise_for :admins, path_names: {sign_in: "login"}
  root 'home#index'

  resources :students, :teachers, :classnames
end