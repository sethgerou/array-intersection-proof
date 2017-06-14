Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'proofs#index'

  get '/proofs/execute' => 'proofs#execute'
end
