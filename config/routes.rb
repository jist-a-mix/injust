Rails.application.routes.draw do
  
	devise_for :users, controllers: { registrations: 'users/registrations' }

	
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "home#index"
get "home/cgu", to: "home#cgu", as: "cgu"
  resources :home
  
  resources :categories 
    

 get 'contact-me', to: 'contacts#new', as: 'new_contact'
  post 'contact-me', to: 'contacts#create', as: 'create_contact'
  
  
  
  resources :posts do
  	resources :comments, module: :posts



  end
    match"/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
match "/500", to: "errors#internal_server_error", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
