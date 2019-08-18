Rails.application.routes.draw do
  root 'topics#index'
  post '/topics/create', to: 'topics#create'
  post '/topics/destroy', to: 'topics#destroy'
end
