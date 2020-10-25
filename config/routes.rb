Rails.application.routes.draw do
  get 'volunteer/index'
  get 'foodbank/index'
  get 'donate/new'
  get 'donate/create'
  get 'donate/index'
  get 'home/index'
  get "search", :to => "foodbank#index"
  get "volunteerSearch", :to => "volunteer#index"
  get "donateSearch", :to => "donate#index"

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
