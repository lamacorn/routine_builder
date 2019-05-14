Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "products#index"
  # Routes for the Routine product resource:

  # CREATE
  get("/routine_products/new", { :controller => "routine_products", :action => "new_form" })
  post("/create_routine_product", { :controller => "routine_products", :action => "create_row" })
  post("/create_routine_product_from_concern", { :controller => "routine_products", :action => "create_row_from_concern" })
  post("/create_routine_product_from_routine", { :controller => "routine_products", :action => "create_row_from_routine" })
  post("/create_routine_product_from_product", { :controller => "routine_products", :action => "create_row_from_product" })

  # READ
  get("/routine_products", { :controller => "routine_products", :action => "index" })
  get("/routine_products/:id_to_display", { :controller => "routine_products", :action => "show" })

  # UPDATE
  get("/routine_products/:prefill_with_id/edit", { :controller => "routine_products", :action => "edit_form" })
  post("/update_routine_product/:id_to_modify", { :controller => "routine_products", :action => "update_row" })

  # DELETE
  get("/delete_routine_product/:id_to_remove", { :controller => "routine_products", :action => "destroy_row" })
  get("/delete_routine_product_from_primary_concern/:id_to_remove", { :controller => "routine_products", :action => "destroy_row_from_primary_concern" })
  get("/delete_routine_product_from_routine/:id_to_remove", { :controller => "routine_products", :action => "destroy_row_from_routine" })
  get("/delete_routine_product_from_product/:id_to_remove", { :controller => "routine_products", :action => "destroy_row_from_product" })

  #------------------------------

  # Routes for the Customer concern resource:

  # CREATE
  get("/customer_concerns/new", { :controller => "customer_concerns", :action => "new_form" })
  post("/create_customer_concern", { :controller => "customer_concerns", :action => "create_row" })
  post("/create_customer_concern_from_concern", { :controller => "customer_concerns", :action => "create_row_from_concern" })

  # READ
  get("/customer_concerns", { :controller => "customer_concerns", :action => "index" })
  get("/customer_concerns/:id_to_display", { :controller => "customer_concerns", :action => "show" })

  # UPDATE
  get("/customer_concerns/:prefill_with_id/edit", { :controller => "customer_concerns", :action => "edit_form" })
  post("/update_customer_concern/:id_to_modify", { :controller => "customer_concerns", :action => "update_row" })

  # DELETE
  get("/delete_customer_concern/:id_to_remove", { :controller => "customer_concerns", :action => "destroy_row" })
  get("/delete_customer_concern_from_concern/:id_to_remove", { :controller => "customer_concerns", :action => "destroy_row_from_concern" })
  get("/delete_customer_concern_from_customer/:id_to_remove", { :controller => "customer_concerns", :action => "destroy_row_from_customer" })

  #------------------------------

  # Routes for the Concern resource:

  # CREATE
  get("/concerns/new", { :controller => "concerns", :action => "new_form" })
  post("/create_concern", { :controller => "concerns", :action => "create_row" })

  # READ
  get("/concerns", { :controller => "concerns", :action => "index" })
  get("/concerns/:id_to_display", { :controller => "concerns", :action => "show" })

  # UPDATE
  get("/concerns/:prefill_with_id/edit", { :controller => "concerns", :action => "edit_form" })
  post("/update_concern/:id_to_modify", { :controller => "concerns", :action => "update_row" })

  # DELETE
  get("/delete_concern/:id_to_remove", { :controller => "concerns", :action => "destroy_row" })

  #------------------------------

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
  get("/delete_routine_from_customer/:id_to_remove", { :controller => "routines", :action => "destroy_row_from_customer" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })
  post("/create_product_from_category", { :controller => "products", :action => "create_row_from_category" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })
  get("/delete_product_from_category/:id_to_remove", { :controller => "products", :action => "destroy_row_from_category" })

  #------------------------------

  devise_for :customers
  # Routes for the Customer resource:

  # READ
  get("/customers", { :controller => "customers", :action => "index" })
  get("/customers/:id_to_display", { :controller => "customers", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
