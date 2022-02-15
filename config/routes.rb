Rails.application.routes.draw do
  # index
  get 'tasks', to: 'tasks#index'
  # create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # read
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id/delete', to: 'tasks#destroy', as: :delete_task

end
