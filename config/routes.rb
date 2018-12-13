Rails.application.routes.draw do

  resources :temps
  
  get 'user_tasks/index'
  get 'lab1/index'
  get 'lab1/login'
  get 'lab1/invoice'
  get 'lab1/maint'
  get 'lab1/setting'
  get 'lab1/tax'
  get 'lab1/tasklist'

  get 'user_tasks/index'
  
  root 'sessions#new'
  
  get 'admin/index'
  get 'admin/showUserLogs'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
  end

  resources :users
  resources :tasks
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
