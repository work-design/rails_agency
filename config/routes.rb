Rails.application.routes.draw do

  namespace :agential, defaults: { business: 'agential' } do
    namespace :admin, defaults: { namespace: 'admin' } do
      resources :agencies do
        member do
          get 'crowd' => :edit_crowd
          patch 'crowd' => :update_crowd
          delete 'crowd' => :destroy_crowd
          delete 'card' => :destroy_card
        end
      end
    end

    namespace :my, defaults: { namespace: 'my' } do
      resources :agencies
    end

    namespace :me, defaults: { namespace: 'me' } do
      resources :agencies
    end

  end

end
