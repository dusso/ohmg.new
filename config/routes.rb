Rails.application.routes.draw do
  get 'search/index'
  get 'categories/show'
  # Define a página inicial como Home
  root to: 'home#index'

  # Rota para acessar o painel de controle manualmente
  get 'dashboard', to: 'dashboard#index'

  # Rota para a Home (acesso manual, além de ser a root)
  get 'home', to: 'home#index'

  get 'main_category', to: 'categories#show', as: :main_category

  get 'search', to: 'search#index'


  # Rotas para os anúncios
  resources :ads

  # Rotas do Devise para autenticação de usuários
  devise_for :users

  # Verificação de status da aplicação
  get "up", to: "rails/health#show", as: :rails_health_check
end
