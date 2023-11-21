# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :user, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end

  root 'blog_posts#index'
end
