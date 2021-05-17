Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :colocations do
  resources :offers, only: [ :create ]
  end

# =>   resources :offers do
 # =>    member { patch :accept }
 # =>    member { patch :decline }
# =>  member { patch :cancel }
  # => end
  resource :profil, only: [ :show, :edit, :update ]
  resource :notification, only: [ :show ]

end
