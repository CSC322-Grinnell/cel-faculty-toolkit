Rails.application.routes.draw do
  resources :words
  resources :search, only: [:index]
  root 'static_pages#home'
  get '/glossary', to: 'static_pages#glossary'
  get '/index', to: 'search#index'
  get '/faq', to: 'static_pages#faq'
  get '/about', to: 'static_pages#about'
  get '/what_is_cel', to: 'static_pages#what_is_cel'
  get '/intro_to_cel', to: 'static_pages#intro_to_cel'
  get '/community_partnerships', to: 'static_pages#community_partnerships'
  get '/course_design', to: 'static_pages#course_design'
  get '/implementation', to: 'static_pages#implementation'
  get '/assessment', to: 'static_pages#assessment'
  get '/professional_dev', to: 'static_pages#professional_dev'
  get '/partners', to: 'static_pages#partners'
  get '/syllabi', to: 'static_pages#syllabi'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
