Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # post '/subscriptions', to: 'subscriptions#create'
  # patch '/subscritions/:id', to: 'subscriptions#update'
  # get ''
  resources :customers, only: [:index] do
    resources :subscriptions, only: [:index]
  end
  resources :subscriptions, only: [:create, :update] 
end
