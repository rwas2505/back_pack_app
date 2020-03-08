Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get  "/packs" => "packs#index"
    post "/packs" => "packs#create"
    get "/packs/:id" => "packs#show"
    patch "/packs/:id" => "packs#update"
    delete "/packs/:id" => "packs#destroy"
  end
end
