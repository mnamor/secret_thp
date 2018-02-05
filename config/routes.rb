Rails.application.routes.draw do

    resources :users

    root to: 'static_pages#home'

    get 'static_pages/secret_page', to:'static_pages#secret_page'

    get    '/signup',  to: 'users#new'

    post   '/signup',   to: 'users#create'

    get    '/login',   to: 'sessions#new'

    post   '/login',   to: 'sessions#create'

    delete '/logout',  to: 'sessions#destroy'

    get'/users/:id/users/destroy(.:format)', to: 'users#destroy'

end
