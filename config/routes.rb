Rails.application.routes.draw do

  resources :system_specs
  root to: "home#home"
  post '/system_specs/new',to: "system_specs#create"
end
