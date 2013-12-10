TddExample::Application.routes.draw do
  resources :surveys, only: [:index]

  root :to => "surveys#index"
end
