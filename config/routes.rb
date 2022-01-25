Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create index update destroy]
  end

  root 'posts#index'
end
