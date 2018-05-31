Rails.application.routes.draw do
  resources :orcamento_orgao_servicos
  resources :orcamento_orgao_apoios
  resources :orcamento_nv_institutos_especializados
  resources :orcamento_nv_unidade_ensino_pesquisas
  resources :orcamento_nv_area_atuacaos
  resources :despesa_detalhes
  resources :despesas
  resources :receitas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#landing_page'

  get '/landing_page', to: 'pages#landing_page'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/data', to: 'pages#data'
  get '/analysis', to: 'pages#analysis'
  get '/glossary', to: 'pages#glossary'
  get '/search', to: 'pages#search'
end
