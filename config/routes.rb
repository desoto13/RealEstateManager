Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :real_estates, except: [:show, :new] do
    get "processing_transaction", to: "real_estates#processing_transaction"
  end
  resources :real_estates, only: [:new], path: "users/:property_type"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
