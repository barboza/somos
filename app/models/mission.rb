class Mission < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  #attr_accessible :acomplished_at, :closed_at, :closing_message, :description, :goal, :image, :title, :category_id
  validates :title, :category, :goal, :description, presence: true

  def short_description
    first_line = description.split("\n").first
    first_line = first_line[0..100] if first_line.length > 120
    first_line += ' [...]' if first_line.length != description.length
    first_line
  end
end
