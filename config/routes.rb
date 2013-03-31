Clinocor::Application.routes.draw do

  devise_for :medics, controllers: { sessions: 'admin/sessions' }

  root to: 'pages#index'

  namespace :admin do
    root to: 'pages#index'
    resources :medics do
      resources :patients
    end
  end

end