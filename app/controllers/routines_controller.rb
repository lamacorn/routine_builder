class RoutinesController < ApplicationController
  def index
    @routines = Routine.all

    render("routine_templates/index.html.erb")
  end

  def show
    @routine_product = RoutineProduct.new
    @routine = Routine.find(params.fetch("id_to_display"))

    render("routine_templates/show.html.erb")
  end

  def new_form
    @routine = Routine.new

    render("routine_templates/new_form.html.erb")
  end

  def create_row
    @routine = Routine.new

    @routine.customer_id = params.fetch("customer_id")

    if @routine.valid?
      @routine.save

      redirect_back(:fallback_location => "/routines", :notice => "Routine created successfully.")
    else
      render("routine_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @routine = Routine.find(params.fetch("prefill_with_id"))

    render("routine_templates/edit_form.html.erb")
  end

  def update_row
    @routine = Routine.find(params.fetch("id_to_modify"))

    

    if @routine.valid?
      @routine.save

      redirect_to("/routines/#{@routine.id}", :notice => "Routine updated successfully.")
    else
      render("routine_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_customer
    @routine = Routine.find(params.fetch("id_to_remove"))

    @routine.destroy

    redirect_to("/customers/#{@routine.customer_id}", notice: "Routine deleted successfully.")
  end

  def destroy_row
    @routine = Routine.find(params.fetch("id_to_remove"))

    @routine.destroy

    redirect_to("/routines", :notice => "Routine deleted successfully.")
  end
end
