Rails.application.routes.draw do
  devise_for :users
  namespace :devise, :path => "/" do
    post 'sign_up' => 'registrations#create' 
    get 'login' => 'sessions#new'
    post 'login'  => 'sessions#create'
  end
 
  namespace :user do
    resources :to_do_items, only: [:index,:new,:create] do
        member do
          post :completed
        end
    end
  end   


end
