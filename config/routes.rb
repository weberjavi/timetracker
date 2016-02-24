Rails.application.routes.draw do

# en este caso site sería el nombre del controlador y el método home
  get "/" => "site#home"

  get "/contact" => "site#contact"

  resources :projects, only: [:index, :show] do 
    resources :entries, only: [:index, :create, :new]
  end

end
