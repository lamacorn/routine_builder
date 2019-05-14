class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    render("customer_templates/index.html.erb")
  end

  def show
    @customer = Customer.find(params.fetch("id_to_display"))

    render("customer_templates/show.html.erb")
  end
end
