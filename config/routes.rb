Rails.application.routes.draw do
  resources :couriers do
    resources :packages do
      member do
        patch :delivery_status
      end
    end

  end

  root to: "couriers#index"
end
