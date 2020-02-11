Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    authenticated :user do
     root 'home#index', as: :authenticated_root
    end
    unauthenticated do
     root 'devise/sessions#new', as: :unauthenticated_root
   end
  end
end
