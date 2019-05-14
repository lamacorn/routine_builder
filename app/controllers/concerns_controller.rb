class ConcernsController < ApplicationController
  def index
    @concerns = Concern.page(params[:page]).per(10)

    render("concern_templates/index.html.erb")
  end

  def show
    @routine_product = RoutineProduct.new
    @customer_concern = CustomerConcern.new
    @concern = Concern.find(params.fetch("id_to_display"))

    render("concern_templates/show.html.erb")
  end

  def new_form
    @concern = Concern.new

    render("concern_templates/new_form.html.erb")
  end

  def create_row
    @concern = Concern.new

    @concern.name = params.fetch("name")
    @concern.photo = params.fetch("photo") if params.key?("photo")
    @concern.description = params.fetch("description")

    if @concern.valid?
      @concern.save

      redirect_back(:fallback_location => "/concerns", :notice => "Concern created successfully.")
    else
      render("concern_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @concern = Concern.find(params.fetch("prefill_with_id"))

    render("concern_templates/edit_form.html.erb")
  end

  def update_row
    @concern = Concern.find(params.fetch("id_to_modify"))

    @concern.name = params.fetch("name")
    @concern.photo = params.fetch("photo") if params.key?("photo")
    @concern.description = params.fetch("description")

    if @concern.valid?
      @concern.save

      redirect_to("/concerns/#{@concern.id}", :notice => "Concern updated successfully.")
    else
      render("concern_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @concern = Concern.find(params.fetch("id_to_remove"))

    @concern.destroy

    redirect_to("/concerns", :notice => "Concern deleted successfully.")
  end
end
