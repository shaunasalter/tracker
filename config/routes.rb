Rails.application.routes.draw do
  resources :employees do
    resources :records
  end

  get '/records', to: 'records#showall', as: 'records'
end
