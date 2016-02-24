Rails.application.routes.draw do

# en este caso site sería el nombre del controlador y el método home
  get "/" => "site#home"

  get "/contact" => "site#contact"

  get "/projects" => "projects#index"
  
  get "/projects/:id" => "projects#show"

  get "/projects/:project_id/entries" => "entries#index"
end
