Rails.application.routes.draw do
  root to: 'static_pages#home'
  
  get 'home' => 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'


  devise_for :users, path: '',
    path_names:  {},
    controllers: {
      registrations: 'users/registrations',
      sessions:      'users/sessions',
      passwords:     'users/passwords'
    }

    
  get '*any', via: :all, to: 'errors#not_found'
end
