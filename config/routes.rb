Rails.application.routes.draw do
  get 'lab1/index'
  get 'lab1/login'
  get 'lab1/invoice'
  get 'lab1/maint'
  get 'lab1/setting'
  get 'lab1/tax'
  
  root 'sessions#new'
  
  get 'admin/index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
