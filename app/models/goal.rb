class Goal < ApplicationRecord
  validates_presence_of :name

  has_many :inputs
end
