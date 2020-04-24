Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "events/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "events#index"
end
