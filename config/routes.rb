Rails.application.routes.draw do

  resources :worktimes, only:[:index, :create, :edit, :update, :destroy] do
    resources :rest_times, only:[:create, :update, :edit]
  end
  get 'worktimes/:season', to: 'worktimes#index'
  root to: "home#index"
  devise_for :users
  
  devise_scope :user do
      root :to =>"devise/sessions#new"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
