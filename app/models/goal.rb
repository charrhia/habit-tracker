class Goal < ApplicationRecord
  validates_presence_of :name, :user_id

  has_many :inputs
  belongs_to :user


end
