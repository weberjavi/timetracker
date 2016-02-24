class EntriesController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    @entries = @project.entries
    @total_hours = @project.total_hours_in_month(2, 2016)
  end
end
