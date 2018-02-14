#
class Input < ApplicationRecord
  validates_presence_of :goal_id, :user_id
  belongs_to :goal
  belongs_to :user
end
