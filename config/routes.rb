TddExample::Application.routes.draw do
  resources :surveys, only: [:index, :new, :create]

  root :to => "surveys#index"
end
