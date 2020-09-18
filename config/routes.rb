Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations
      resources :victims
    end
  end
  get '/*path' => 'welcome#index'
  root 'welcome#index'
end
