Rails.application.routes.draw do
  root "pages#home"

  post "contact", to: "contacts#create"

  namespace :admin do
    
    root "dashboard#index"

    resources :heroes

    resources :abouts, except: [:new, :create, :destroy]

    resources :contacts, except: [:new, :create, :destroy]

    resources :skills

    resources :projects do
      member do
        delete :remove_image
      end
    end

    resources :technologies
  end

  get "up" => "rails/health#show", as: :rails_health_check

post "/turbo-test", to: "pages#turbo_test"

end

