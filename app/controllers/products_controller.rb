class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(:distinct => true).includes(:routine_products, :category).page(params[:page]).per(10)

    render("product_templates/index.html.erb")
  end

  def show
    @routine_product = RoutineProduct.new
    @product = Product.find(params.fetch("id_to_display"))

    render("product_templates/show.html.erb")
  end

  def new_form
    @product = Product.new

    render("product_templates/new_form.html.erb")
  end

  def create_row
    @product = Product.new

    @product.name = params.fetch("name")
    @product.image = params.fetch("image") if params.key?("image")
    @product.category_id = params.fetch("category_id")
    @product.description = params.fetch("description")
    @product.price = params.fetch("price")

    if @product.valid?
      @product.save

      redirect_back(:fallback_location => "/products", :notice => "Product created successfully.")
    else
      render("product_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_category
    @product = Product.new

    @product.name = params.fetch("name")
    @product.image = params.fetch("image") if params.key?("image")
    @product.category_id = params.fetch("category_id")
    @product.description = params.fetch("description")
    @product.price = params.fetch("price")

    if @product.valid?
      @product.save

      redirect_to("/categories/#{@product.category_id}", notice: "Product created successfully.")
    else
      render("product_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @product = Product.find(params.fetch("prefill_with_id"))

    render("product_templates/edit_form.html.erb")
  end

  def update_row
    @product = Product.find(params.fetch("id_to_modify"))

    @product.name = params.fetch("name")
    @product.image = params.fetch("image") if params.key?("image")
    @product.category_id = params.fetch("category_id")
    @product.description = params.fetch("description")
    @product.price = params.fetch("price")

    if @product.valid?
      @product.save

      redirect_to("/products/#{@product.id}", :notice => "Product updated successfully.")
    else
      render("product_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_category
    @product = Product.find(params.fetch("id_to_remove"))

    @product.destroy

    redirect_to("/categories/#{@product.category_id}", notice: "Product deleted successfully.")
  end

  def destroy_row
    @product = Product.find(params.fetch("id_to_remove"))

    @product.destroy

    redirect_to("/products", :notice => "Product deleted successfully.")
  end
end
