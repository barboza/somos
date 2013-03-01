class Mission < ActiveRecord::Base
  attr_accessible :acomplished, :acomplished_at, :closed_at, :description, :image, :result, :title, :user
end
