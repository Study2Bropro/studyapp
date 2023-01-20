Rails.application.routes.draw do
  devise_for :users

  resources :studies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :d_reports
  resources :w_reports
end
