Rails.application.routes.draw do
  root 'ingredient#index'

  get 'test_page/index'
end
