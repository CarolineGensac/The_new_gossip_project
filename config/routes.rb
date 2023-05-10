Rails.application.routes.draw do
   root 'static_pages#home'
   get '/home', to: 'static_pages#home'
   get '/team', to: 'team_pages#team'
   get '/contact', to: 'contact_pages#contact'
   #get '/form', to: 'gossipform_pages#form'
   get '/new', to: 'gossipform_pages#new'

   get '/:id', to: 'static_pages#home'

   resources :gossipform_pages
   end
