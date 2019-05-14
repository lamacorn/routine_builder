Rails.application.routes.draw do
  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Routine resource:

  # CREATE
  get("/routines/new", { :controller => "routines", :action => "new_form" })
  post("/create_routine", { :controller => "routines", :action => "create_row" })

  # READ
  get("/routines", { :controller => "routines", :action => "index" })
  get("/routines/:id_to_display", { :controller => "routines", :action => "show" })

  # UPDATE
  get("/routines/:prefill_with_id/edit", { :controller => "routines", :action => "edit_form" })
  post("/update_routine/:id_to_modify", { :controller => "routines", :action => "update_row" })

  # DELETE
  get("/delete_routine/:id_to_remove", { :controller => "routines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })

  #------------------------------

  devise_for :customers
  # Routes for the Customer resource:

  # READ
  get("/customers", { :controller => "customers", :action => "index" })
  get("/customers/:id_to_display", { :controller => "customers", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
