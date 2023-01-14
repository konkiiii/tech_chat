Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'questions#index'
  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: :create
  end
end
