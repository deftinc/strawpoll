class Poll < ApplicationRecord
  validates :opens_at, :closes_at, :author_email, presence: true

  after_initialize do |poll|
    poll.opens_at ||= Time.now.utc
    poll.closes_at ||= Time.now.utc + 1.day
  end
end
