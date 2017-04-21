Rails.application.routes.draw do
  
  get 'scrapper/search'

  resources :expansions


  root to: 'expansions#index'
end
