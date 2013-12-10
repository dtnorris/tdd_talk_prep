TddExample::Application.routes.draw do
  resources :surveys, only: [:index, :new]

  root :to => "surveys#index"
end
