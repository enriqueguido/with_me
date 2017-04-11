class Event < ApplicationRecord
  has_many :users
  has_many :comments, :dependent => :destroy


  # attr_accessible :content, :name, :title

  # validates :name,  :presence => true
  validates :name, :presence => true,
                    :length => { :minimum => 5 }

  has_many :comments

  def self.search(search)
    where("name LIKE ? OR tz LIKE ? OR 'start' LIKE ? OR 'end' LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
