# Below are the routes for madmin
namespace :madmin do
  namespace :paper_trail do
    resources :versions
  end
  resources :users
  root to: "dashboard#show"
end
