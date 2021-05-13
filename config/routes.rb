Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :members, controllers: { sessions: 'members/sessions' }
  # as :member do 
  #   get 'members', :to => 'members/sessions#index'
  # end

  resources :members do
    resources :reservations do
      resources :pending_approvals
    end
  end

  resources :housings do
    resources :reservations do
      resources :pending_approvals
    end
  end

  # resources :reservations do
  #   resources :pending_approval
  # end

  # resources :pending_approvals
  # end
  
end
