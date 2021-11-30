Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "/about", to: "home#about"
  resources :game
  resources :score

  authenticate :user, ->(user) { user.admin? } do
    draw :madmin
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
