Rails.application.routes.draw do
  resources :frosty_quests
  root "frosty_quests#index"
  resources :quests

  get "up" => "rails/health#show", as: :rails_health_check


end
