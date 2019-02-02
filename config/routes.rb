Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'about', to: 'about#index'
  get 'about/founder', to: 'about#founder'
  get 'about/faculty', to: 'about#faculty'
  get 'about/locations', to: 'about#locations'
  get 'about/contact', to: 'about#contact'

  get 'summer/pictures', to: 'summer#pictures'
  get 'summer/registration', to: 'summer#registration'

  get 'impact/testimonials', to: 'impact#testimonials'
  get 'impact/alumni', to: 'impact#alumni'
  get 'impact/press', to: 'impact#press'
  get 'impact/giving-back', to: 'impact#giving-back'

  get 'registration/brochure', to: 'registration#brochure'
  get 'registration/interactive', to: 'registration#interactive'
  get 'registration/printing', to: 'registration#printing'

  resources :programs, only: [:show]
  resources :galleries, only: [:show]
end
