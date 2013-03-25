Clinocor::Application.routes.draw do

  devise_for :medics, controllers: { sessions: 'admins/sessions' }

  root to: 'pages#index'

  namespace :admin do
    resources :medics do
      resources :patients
    end
  end

end