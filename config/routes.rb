Rails.application.routes.draw do

# en este caso site sería el nombre del controlador y el método home
  get "/" => "site#home"

  get "/contact" => "site#contact"

  get "/projects" => "projects#index"
  
end
