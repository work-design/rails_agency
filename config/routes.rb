Rails.application.routes.draw do
  
  scope :admin, module: 'agency/admin', as: :admin do
    resources :agencies do
      member do
        get 'crowd' => :edit_crowd
        patch 'crowd' => :update_crowd
        delete 'crowd' => :destroy_crowd
        delete 'card' => :destroy_card
      end
    end
  end
  
  scope :my, module: 'agency/my', as: :my do
    resources :agencies
  end
  
end
