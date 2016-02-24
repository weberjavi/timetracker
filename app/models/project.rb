class Project < ActiveRecord::Base
  has_many :entries

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 30 }
  #validates :name, format:{ with: /\w\s[^_]/ }
  validates :name, format:{ with: /\A[a-zA-ZÑñ
    0-9\ ]+\z/ }

  def self.clean_old
   where("created_at < ?", Time.now - 7.days).destroy_all
  end
  def self.iron_find(id)
    where(id: id).first
  end
  def self.last_created_projects(num_projects)
    order(created_at: :desc).limit(num_projects)
  end
  def total_hours_in_month(month, year)
    from = Date.new(year, month, 1)
    to = from.end_of_month
    #selecciona sólo las que están en este rango
    entries = self.entries.where(date: from..to)
    entries.pluck(:hours).sum()
    #entries.to_a.sum(&:hours)
  end
end
