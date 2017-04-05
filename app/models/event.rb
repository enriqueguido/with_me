class Event < ApplicationRecord
  has_many :users
  has_many :comments, :dependent => :destroy
end
