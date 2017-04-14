class Event < ApplicationRecord
  has_many :users
  has_many :comments, :dependent => :destroy


  # attr_accessible :content, :name, :title

  # validates :name,  :presence => true
  validates :name, :presence => true,
                    :length => { :minimum => 5 }


  def self.search(search)
    if search
      where("name ILIKE ? OR tz ILIKE ? OR 'start' ILIKE ? OR 'end' ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      @event
    end
  end
end
