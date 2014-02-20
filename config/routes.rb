# -*- encoding : utf-8 -*-
Dage::Application.routes.draw do

  resources :hetongs


  resources :chukus


  resources :items


  resources :bugs


  namespace :admin do
    resources :item_records do
    end

    resources :items do
      resources :item_records
    end

    resources :users
    resources :pages

    get "dashboard" => "base#dashboard"
    get "configuration" => "base#configuration"
  end

  devise_for :users


  match "change" => "admin/users#password"
  match "change_password" => "admin/users#change_password"


  root :to => 'admin/base#dashboard'

  match ':controller(/:action(/:id))(.:format)'
end
