Rails.application.routes.draw do
  root 'home#top'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'home/about' => 'home#about', as: 'about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end