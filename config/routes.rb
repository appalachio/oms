# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  if Rails.env.development?
    # View all sent emails in the web browser
    mount LetterOpenerWeb::Engine, at: "/sent_emails"
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
