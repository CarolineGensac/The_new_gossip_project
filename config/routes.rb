Rails.application.routes.draw do
   root 'static_pages#home'
   get '/home', to: 'static_pages#home'
   get '/team', to: 'team_pages#team'
   get '/contact', to: 'contact_pages#contact'
   get '/:id', to: 'static_pages#home'
end
