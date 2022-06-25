Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :lawyers do 
        resources :litigations
      end
    end
  end
  namespace :api do
    namespace :v1 do
      resources :litigations do 
        resources :lawyers
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
