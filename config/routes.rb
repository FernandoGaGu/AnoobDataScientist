Rails.application.routes.draw do
	root to: 'static_pages#home'
	
	resources :projects
	resources :contacts

	get '/projects', to: 'projects#index'
	get '/contacts', to: 'contacts#index'	
	get '/education', to: 'static_pages#education'	
	get '/', to: 'static_pages#home'
  	
end
