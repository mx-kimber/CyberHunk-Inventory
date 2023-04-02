Rails.application.routes.draw do

  get "/synthwears" => "synthwears#index"
  get "/synthwears/:id" => "synthwears#show"
  post "/synthwears" => "synthwears#create"
  patch "/synthwears/:id" => "synthwears#update"
  delete "/synthwears/:id" => "synthwears#destroy"

end


