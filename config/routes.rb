Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
