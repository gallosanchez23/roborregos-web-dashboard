Rails.application.routes.draw do
  devise_for :members

  resources :members
end
