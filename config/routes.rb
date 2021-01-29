Rails.application.routes.draw do
  root 'ingredient#index'

  get 'test_page/index'

  resources :ingredient, only: %i[index, show]
end
