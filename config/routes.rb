Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
   devise_for :users, path: '', path_names: {
     sign_in: 'login',
     sign_out: 'logout',
     registration: 'signup'
   },
   controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  #get 'current_user/index'
  root to: 'api/v1/users#index'
  get '/current_user', to: 'current_user#index'
  # Defines the root path route ("/")
  # root "posts#index"
  namespace :api do
    namespace :v1 do
      resources :users
      resources :vehicles
      resources :reservations
    end
  end
end
