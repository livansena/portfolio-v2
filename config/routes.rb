Rails.application.routes.draw do
  root "pages#home"

  namespace :admin do
    resources :heroes

    resources :abouts, except: [:new, :create, :destroy]

    resources :skills

    resources :projects do
      member do
        delete :remove_image
      end
    end

    resources :technologies
  end

  get "up" => "rails/health#show", as: :rails_health_check
end