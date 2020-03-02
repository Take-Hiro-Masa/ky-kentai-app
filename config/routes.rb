Rails.application.routes.draw do
  # get 'signup/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "reports#index"
  resources :signup, only: [:index, :create] do
    collection do
      get "step2"
      get "step3"
    end
  end

  resources :companies, only: [:index, :create] do
    collection do
      get "step1"
    end
  end

  resources :mypage, only: [:index] do
    collection do
      get "logout"
      get "ky_info"
    end
  end

  resources :reports, only: [:index, :new, :create, :edit, :show] do
    collection do
      get "verification"
    end
  end

  resources :users, only: [:destroy]
end
