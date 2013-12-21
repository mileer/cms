Cms::Application.routes.draw do
  devise_for :users, 
              path_names: { sign_in: :login, sign_out: :logout }

  namespace :admin do
    get '/', to: 'users#index'
    resources :users
  end

  root "home#index"
  
end
