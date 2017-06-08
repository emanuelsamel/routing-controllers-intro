Rails.application.routes.draw do
  get '/welcome' => 'pages#welcome'
  get '/' => 'pages#welcome'
  get '/pages/about' => 'pages#about'
  get '/pages/contest' => 'pages#contest'
  get '/kitten/:size/' => 'pages#kitten' # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/kittens/:size' => 'pages#kittens'
end
