Rails.application.routes.draw do
  
  get '/*path' => 'welcome#index'
  root 'welcome#index'
end
