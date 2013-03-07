class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :missions
  validates :name, presence: true
end
