Rails.application.routes.draw do

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :parks, concerns: :paginatable do
    collection do
      # get :most_facilities
    end
    resources :facilities
  end
end
