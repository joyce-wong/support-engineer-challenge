Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "root/index"
  # If you have a dedicated config/environments/staging.rb
  mount LetterOpenerWeb::Engine, at: "/mail"
  # where visitors are redirected once email has been sent
  get "root/email_sent"
  # Defines the root path route ("/")
  root "root#index"
  # route where you will send an email
  post "/", to: "root#create"
end
