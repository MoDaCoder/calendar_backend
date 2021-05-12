Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :members, controllers: { sessions: 'members/sessions' }

  resources :members do
    resources :reservations
  end

  resources :housings do
    resources :reservations
  end
end
