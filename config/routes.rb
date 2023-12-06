Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'users/show'
  get 'users/edit'
  get 'sessions/new'
  get 'registrations/new'
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
