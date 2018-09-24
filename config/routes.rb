Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'

  # resources :school_classes, only: [:index, :new, :create, :edit, :update]
  # get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'

  resources :school_classes, except: [:destroy, :index]

end
