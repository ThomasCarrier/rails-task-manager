Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get 'tasks' => 'tasks#index'           #: get all your tasks.

    get '/tasks/new' => 'tasks#new'         #: get the form to create a new task
    post '/tasks' => 'tasks#create'         #: post a new task

    get '/tasks/:id' => 'tasks#show', as: :task       #: get a precise task, e.g get '/tasks/33' get task with id=3

    get '/tasks/:id/edit' => 'tasks#edit', as: :edit_task   #: get the form to edit an existing task
    patch '/tasks/:id' => 'tasks#update'    #: update an existing task

    delete '/tasks/:id' => 'tasks#destroy'  #: delete an existing task

end
