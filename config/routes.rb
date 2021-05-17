Rails.application.routes.draw do
  root to: "memo#index"
  post 'memo', to: 'memo#create', as: 'memo_index'
  get 'memo/new', to: 'memo#new', as: 'new_memo'
  get 'memo/:id/edit', to: 'memo#edit', as: 'edit_memo'
  resources :memo, only: [:update, :destroy]
end 