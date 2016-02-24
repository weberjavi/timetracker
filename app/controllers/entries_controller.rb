class EntriesController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    @entries = @project.entries
    date = Date.today
    @total_hours = @project.total_hours_in_month(date.month, date.year)
  end
end
