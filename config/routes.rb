Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # routes.rb
  namespace :api do
    namespace :v1 do
      resources :employees
      get "/salary_calculation/:employee_id", to: "salary_calculations#show"
      get "/salary_metrics/country", to: "salary_metrics#by_country"
      get "/salary_metrics/job_title", to: "salary_metrics#by_job_title"
    end
  end
end
