Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'url/shortener'
      get 'url/lengthener'
      get 'url/index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
