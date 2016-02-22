class Project < ActiveRecord::Base
  def self.clean_old
   where("created_at < ?", Time.now - 7.days).destroy_all
  end
  def self.iron_find(id)
    where(id: id).first
  end
end
