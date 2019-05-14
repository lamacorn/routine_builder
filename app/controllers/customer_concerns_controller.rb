class CustomerConcernsController < ApplicationController
  before_action :current_customer_must_be_customer_concern_customer, :only => [:edit_form, :update_row, :destroy_row]

  def current_customer_must_be_customer_concern_customer
    customer_concern = CustomerConcern.find(params["id_to_display"] || params["prefill_with_id"] || params["id_to_modify"] || params["id_to_remove"])

    unless current_customer == customer_concern.customer
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_customer.customer_concerns.ransack(params[:q])
    @customer_concerns = @q.result(:distinct => true).includes(:customer, :concern).page(params[:page]).per(10)

    render("customer_concern_templates/index.html.erb")
  end

  def show
    @customer_concern = CustomerConcern.find(params.fetch("id_to_display"))

    render("customer_concern_templates/show.html.erb")
  end

  def new_form
    @customer_concern = CustomerConcern.new

    render("customer_concern_templates/new_form.html.erb")
  end

  def create_row
    @customer_concern = CustomerConcern.new

    @customer_concern.customer_id = params.fetch("customer_id")
    @customer_concern.concern_id = params.fetch("concern_id")

    if @customer_concern.valid?
      @customer_concern.save

      redirect_back(:fallback_location => "/customer_concerns", :notice => "Customer concern created successfully.")
    else
      render("customer_concern_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_concern
    @customer_concern = CustomerConcern.new

    @customer_concern.customer_id = params.fetch("customer_id")
    @customer_concern.concern_id = params.fetch("concern_id")

    if @customer_concern.valid?
      @customer_concern.save

      redirect_to("/concerns/#{@customer_concern.concern_id}", notice: "CustomerConcern created successfully.")
    else
      render("customer_concern_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @customer_concern = CustomerConcern.find(params.fetch("prefill_with_id"))

    render("customer_concern_templates/edit_form.html.erb")
  end

  def update_row
    @customer_concern = CustomerConcern.find(params.fetch("id_to_modify"))

    
    @customer_concern.concern_id = params.fetch("concern_id")

    if @customer_concern.valid?
      @customer_concern.save

      redirect_to("/customer_concerns/#{@customer_concern.id}", :notice => "Customer concern updated successfully.")
    else
      render("customer_concern_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_customer
    @customer_concern = CustomerConcern.find(params.fetch("id_to_remove"))

    @customer_concern.destroy

    redirect_to("/customers/#{@customer_concern.customer_id}", notice: "CustomerConcern deleted successfully.")
  end

  def destroy_row_from_concern
    @customer_concern = CustomerConcern.find(params.fetch("id_to_remove"))

    @customer_concern.destroy

    redirect_to("/concerns/#{@customer_concern.concern_id}", notice: "CustomerConcern deleted successfully.")
  end

  def destroy_row
    @customer_concern = CustomerConcern.find(params.fetch("id_to_remove"))

    @customer_concern.destroy

    redirect_to("/customer_concerns", :notice => "Customer concern deleted successfully.")
  end
end
