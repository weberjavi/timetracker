class Project < ActiveRecord::Base
  def self.clean_old
   where("created_at < ?", Time.now - 7.days).destroy_all
  end
  def self.iron_find(id)
    where(id: id).first
  end
  def self.last_created_projects(num_projects)
    order(created_at: :desc).limit(num_projects)
  end
end
