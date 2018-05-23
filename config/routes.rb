Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :restaurants, only: [:index, :create, :new, :show ]  do
      resources :reviews, only: [:index, :create, :new, :show ]
  end

  namespace :admin do
    resources :restaurants do
      resources :reviews
    end
  end
end
