Rails.application.routes.draw do
  root 'application#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope :api do
    scope :v1 do
        devise_for :users, controllers: { sessions: 'api/v1/sessions', registrations: 'api/v1/registrations'}
    end
  end
end
