class Entry < ActiveRecord::Base
  belongs_to :project

  validates :hours, :minutes, numericality: true
  validates :hours, :minutes, :date, :project_id, presence: true
end
