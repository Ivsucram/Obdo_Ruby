Rails.application.routes.draw do
  root 'home#index'
  scope :user do
    get "/check" => "user#check"
    post "/login" => "user#login"
    get "/phone/activated" => "user#phone_activated"
    post "/register" => "user#register"
    post "/name" => "user#register_name"
  end

  scope :posts do
    get "/public" => "posts#get_public_posts"
    post "/create" => "posts#create_post"
  end
end
