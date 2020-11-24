Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'anagram/check'
      get 'url/shortener'
      post 'url/shortener'
      get 'url/lengthener'
     # post 'url/lengthener' #don't think I will be using this
      get 'url/index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
