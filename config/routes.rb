Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks do
    member do
      get 'sup-tasks', action: :sup_tasks
      get 'sub-tasks', action: :sub_tasks
    end
  end

  # root 'tasks#index'
  root 'home#index'

  # get '/tasks/:id/sup-tasks'
  # get '/tasks/:id/sub-tasks'
end
