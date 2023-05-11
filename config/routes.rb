Rails.application.routes.draw do
   root to: redirect('/gossips')
   resources :gossips
   resources :users
   resources :sessions
   #get '/home', to: 'static_pages#home'
   get '/team', to: 'team_pages#team'
   get '/contact', to: 'contact_pages#contact'

   end
