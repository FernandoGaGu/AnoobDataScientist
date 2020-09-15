Rails.application.routes.draw do
	root to: 'static_pages#home'
	
	resources :projects

	get '/projects', to: 'projects#index'
	get '/contact', to: 'static_pages#contact'	
	get '/about', to: 'static_pages#about'	
	get '/', to: 'static_pages#home'
  	
end
