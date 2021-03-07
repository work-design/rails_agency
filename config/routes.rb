Rails.application.routes.draw do

  scope :admin, module: 'agential/admin', as: :admin, defaults: { business: 'agential', namespace: 'admin' } do
    resources :agencies do
      member do
        get 'crowd' => :edit_crowd
        patch 'crowd' => :update_crowd
        delete 'crowd' => :destroy_crowd
        delete 'card' => :destroy_card
      end
    end
  end

  scope :my, module: 'agential/my', as: :my, defaults: { business: 'agential', namespace: 'my' } do
    resources :agencies
  end

  scope :me, module: 'agential/me', as: :me, defaults: { business: 'agential', namespace: 'me' } do
    resources :agencies
  end

end
