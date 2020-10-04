Rails.application.routes.draw do
  devise_for :users, controllers: {
registrations: 'registrations'
 }
    match 'users/mail' => 'users#mail', :as => :mail, via: :post
    match 'users/sendall' => 'users#sendall', :as => :sendall, via: :get
    match 'users/sendloc' => 'users#sendloc', :as => :sendloc, via: :post
    get "/sendlocation", to: "users#sendlocation"
    get "users/mail" => "users#mail"
    match 'users/sendmail' => 'users#sendmail', :as => :sendmail, via: :post
    match 'users/index' => 'users#index', :as => :index, via: :get
    root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
