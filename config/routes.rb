Rails.application.routes.draw do
  resources :emp_projects
  resources :tasks
  resources :rec_expenses
  resources :projects
  resources :managers
  resources :invoices
  resources :expenses
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
