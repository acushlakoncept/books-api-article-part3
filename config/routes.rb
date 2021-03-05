Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: %i[index create destroy]
      resources :books, only: %i[index create show update destroy]
    end
  end
end
