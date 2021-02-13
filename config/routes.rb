Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all
  get 'tasks', to: 'tasks#index'
    # create new
  get 'tasks/new', to: 'tasks#new'
  # Show One
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # Posting new
  post 'tasks', to: 'tasks#create'
  # Edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  # Patch
  patch "tasks/:id", to: "tasks#update"
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
