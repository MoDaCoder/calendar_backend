Rails.application.routes.draw do
  # get 'members/member_params'
  # get 'members/index'
  # devise_for :members

  # match '/members', to: 'members#index', via: 'get'

  devise_for :members, controllers: { sessions: 'members/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
