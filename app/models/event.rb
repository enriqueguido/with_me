class Event < ApplicationRecord
  has_many :users
  has_many :comments, :dependent => :destroy

  def self.search(search)
    where("name LIKE ? OR tz LIKE ? OR 'start' LIKE ? OR 'end' LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
