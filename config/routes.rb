Rails.application.routes.draw do

  get '/', to: "restaurants#index"
  resources :restaurants do
    collection do
      resources :reviews, only: [:new, :create]
    end
  end
  # get 'restaurants/new'

  # get 'restaurants/show'

  # get 'restaurants/index'

  # get 'restaurants/update'

  # get 'reviews/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
