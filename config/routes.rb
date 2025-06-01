Rails.application.routes.draw do
  get "pages/brag"
  resources :frosty_quests
  root "frosty_quests#index"


  get "up" => "rails/health#show", as: :rails_health_check
# config/routes.rb
  get "/brags", to: "brags#index", as: "brags"


end
