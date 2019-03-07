require 'test_helper'

class PollTest < ActiveSupport::TestCase
  test "#new initializes opens_at to the current date" do
    assert Poll.new.opens_at.to_date == Time.now.to_date
  end

  test "#new initializes closes_at to the next day" do
    assert Poll.new.closes_at.to_date == (Time.now + 1.day).to_date
  end

  test "#valid? author_email is required for save" do
    poll = Poll.new opens_at: Time.now, closes_at: Time.now + 1.day
    assert poll.valid? == false
    poll.author_email = "john@example.com"
    assert poll.valid? == true
  end

  test "#valid? opens_at is required for save" do
    poll = Poll.new author_email: "john@example.com", closes_at: Time.now + 1.day
    poll.opens_at = nil
    assert poll.valid? == false
    poll.opens_at = Time.now
    assert poll.valid? == true
  end

  test "#valid? closes_at is required for save" do
    poll = Poll.new opens_at: Time.now, author_email: "john@example.com"
    poll.closes_at = nil
    assert poll.valid? == false
    poll.closes_at = Time.now + 1.day
    assert poll.valid? == true
  end
end
