Rails.application.routes.draw do
  devise_for :customers
  # Routes for the Customer resource:

  # READ
  get("/customers", { :controller => "customers", :action => "index" })
  get("/customers/:id_to_display", { :controller => "customers", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
