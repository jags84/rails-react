Rails.application.routes.draw do

  devise_for :user, :controllers => {registrations: 'user/registrations', sessions: 'user/sessions', passwords: "user/passwords"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :welcome, :only => [:index]
  resources :dashboard, :only => [:index]

  namespace :api do
    namespace :v1 do
      resources :packages, :only => [:index,:create]
      resources :orders, :only => [:index,:create]
    end
  end


  root to: "welcome#index"
end