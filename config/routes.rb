Rails.application.routes.draw do
  post 'start_work', to: 'home#start_work'
  patch 'end_work', to: 'home#end_work'
  patch 'start_breaktime', to: 'home#start_breaktime'
  patch 'end_breaktime', to: 'home#end_breaktime'

  resources :worktimes, controller: :worktime, only:[:index, :edit, :update, :destroy]
  get 'worktimes/:month', to: 'worktimes#index', param: :month
  root to: "home#index"
  devise_for :users
  
  devise_scope :user do
      root :to =>"devise/sessions#new"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
