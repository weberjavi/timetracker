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
end
