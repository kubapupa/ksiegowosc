Rails.application.routes.draw do
  root to: "pages#mainpage"
  get "payments", to: "payments#index"
  get "newpayment", to: "payments#new"
  post "payments", to: "payments#create"
  get "payments", to: "payments#destroy"
  delete "payments", to: "payments#destroy"
end
