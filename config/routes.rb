Dummy::Application.routes.draw do
  # devise_for :users
  root :to => proc { [200, {"Content-Type" => "text/html"}, ["Hi!"]] }
end 
