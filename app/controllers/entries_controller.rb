class EntriesController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    @entries = @project.entries
    date = Date.today
    @total_hours = @project.total_hours_in_month(date.month, date.year)
  end
  def new
    #Identificas el proyecto a través del parámetro definido en la URL
    @project = Project.find params[:project_id]
    #Creas una nueva entrada (aunque sin salvarla). Posteriormente 
    #le otorgaremos valores a los parámetros a través del formulario
    @entry = @project.entries.new
  end
  def create
    #find the project
    @project = Project.find params[:project_id]
    #new entry for that project with attributes from params[:entry]
    @entry = @project.entries.new(entry_params)
    #Try to save it
    if @entry.save 
      redirect_to action: "index", controller: "entries", project_it: @project.id
    else
      render "new"
    end
  end


  private

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :date)
  end


end
