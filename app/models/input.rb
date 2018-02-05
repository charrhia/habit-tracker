class Input < ApplicationRecord
  validates_presence_of :goal_id
  belongs_to :goal
end
