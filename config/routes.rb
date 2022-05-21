Rails.application.routes.draw do
  # Pages controller routes
  root to: "pages#home"

  # Employees controller routes
  resources :employees, only: [:index, :show, :new, :create]

end
