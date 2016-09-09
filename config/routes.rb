Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    scope module: 'v1' do
      root 'authentication#authenticate'
      resources :artists
      resources :event_urls
      resources :event_types
      resources :access_types
      resources :images
      resources :places
      resources :cities
      resources :attending_lists
      resources :events
      resources :users
    end
  end
end
