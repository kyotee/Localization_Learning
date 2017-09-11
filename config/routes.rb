Rails.application.routes.draw do
  resources :static_pages
  
  get 'static_pages/home'
  root 'static_pages#home'
end
