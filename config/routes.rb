Rails.application.routes.draw do
  root "pages#home"

  namespace :admin do
    resources :projects
    resources :technologies
  end

  get "up" => "rails/health#show", as: :rails_health_check
end