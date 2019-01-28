Rails.application.routes.draw do
  post 'posts/:id/vote', to: 'posts#vote', as: :vote
  root to: 'posts#index'
end
