Angelia::Application.routes.draw do
  root 'home#index'

  match '/search',  to: 'home#search',  via: 'post'

end
