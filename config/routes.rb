Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#new'
  get '/', to: 'welcome#new'
  get '/send_message', to: 'welcome#create'
end
