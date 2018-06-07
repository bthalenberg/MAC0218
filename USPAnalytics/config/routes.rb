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
  get '/browse', to: 'pages#browse'
  get '/browse_institute', to: 'pages#browse_institute'
  get '/browse_institute_analysis', to: 'pages#browse_institute_analysis'
  get '/browse_institute_raw_data', to: 'pages#browse_institute_raw_data'
  get '/browse_topic', to: 'pages#browse_topic'
  get '/browse_topic_analysis', to: 'pages#browse_topic_analysis'
  get '/browse_topic_annual_data', to: 'pages#browse_topic_annual_data'
  get '/browse_topic_raw_data', to: 'pages#browse_topic_raw_data'
  get '/search', to: 'pages#search'
  get '/glossary', to: 'pages#glossary'
end
