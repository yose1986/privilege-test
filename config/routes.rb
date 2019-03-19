Rails.application.routes.draw do

  root :to => 'mainmenus#mainmenu'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mainmenus

  get 'menuadmin', action: :menuadmin, controller: "mainmenus"
  get 'useradmin', action: :useradmin, controller: "mainmenus"
  get 'adminonly', action: :adminonly, controller: "mainmenus"
  get 'regularmenu', action: :regularmenu, controller: "mainmenus"
  get 'userprivate', action: :userprivate, controller: "mainmenus"
  get 'superadminuser', action: :superadminuser, controller: "mainmenus"


end
