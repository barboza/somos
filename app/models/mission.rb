class Mission < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :acomplished_at, :closed_at, :closing_message, :description, :goal, :image, :title, :category
  validates :title, :category, :goal, :description, presence: true
end
