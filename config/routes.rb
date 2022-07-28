Rails.application.routes.draw do
#   root :to => 'create_tasks#index'
  resources :create_tasks
   get 'greetings/hello'
   get 'greetings/goodbye'
   get 'greetings/test_array'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
