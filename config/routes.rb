Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup', to: 'registrations#new', as: 'signup'
  post '/signup', to: 'registrations#create'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/home', to: 'welcome#home', as: 'home'
  get '/admin_tools', to: 'welcome#admin_tools', as: 'admin_tools'

end
