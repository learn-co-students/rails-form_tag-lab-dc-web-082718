Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  # get '/students/new', to: 'students#new', as: 'new_student'
  # get '/students/:id', to: 'students#show', as: 'student'
  # post '/students/:id', to: 'students#create', as: 'create_student'
end
