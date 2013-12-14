Rails3DeviseRspecCucumber::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index', as: nil
  end
  root :to => "home#index"
  devise_for :users
end
