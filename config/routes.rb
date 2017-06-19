Rails.application.routes.draw do
  resources :expanded_text_ads, defaults: {format: :json}
  resources :ad_groups, defaults: {format: :json}
  resources :campaigns, defaults: {format: :json}
  root to: 'welcome#index'
end