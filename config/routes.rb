Rails.application.routes.draw do
  root to: "home#index"

  get "sign_up", to: "user#new"
  post "sign_up", to: "user#create"

  get "up" => "rails/health#show", as: :rails_health_check
end
