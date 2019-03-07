class PollOption < ApplicationRecord
  validates_presence_of :option
  validates_length_of :option, minimum: 1, maximum: 80
  validates :votes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  belongs_to :poll
end
