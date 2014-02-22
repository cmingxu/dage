# -*- encoding : utf-8 -*-
Dage::Application.routes.draw do

  resources :bugs


  namespace :admin do
    resources :items do
      resources :chukus
      resources :rukus
      collection do
        get :search
      end
    end

    resources :users
    resources :pages
    resources :hetongs do
      resources :chukus
      collection do
        get :search
      end
    end
    resources :chukus do
    end

    resources :rukus do
      collection do
        get :search_supplier
      end
    end


    get "dashboard" => "base#dashboard"
    get "configuration" => "base#configuration"
  end

  devise_for :users


  match "change" => "admin/users#password"
  match "change_password" => "admin/users#change_password"


  root :to => 'admin/base#dashboard'

  match ':controller(/:action(/:id))(.:format)'
end
