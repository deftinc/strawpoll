require 'test_helper'

class PollOptionTest < ActiveSupport::TestCase
  test "#new initializes votes to zero" do
    assert PollOption.new.votes == 0
  end

  test "#valid? poll is required for save" do
    poll_option = PollOption.new option: "A choice"
    assert poll_option.valid? == false
    poll_option.poll = Poll.first
    assert poll_option.valid? == true
  end

  test "#valid? votes is required for save" do
    poll_option = PollOption.new option: "A choice", poll: Poll.first
    poll_option.votes = nil
    assert poll_option.valid? == false
    poll_option.votes = 0
    assert poll_option.valid? == true
  end

  test "#valid? option is required for save" do
    poll_option = PollOption.new poll: Poll.first
    assert poll_option.valid? == false
    poll_option.option = "A choice"
    assert poll_option.valid? == true
  end

  test "#valid? option is required to have a length < 80" do
    poll_option = PollOption.new option: '*'*80
    assert poll_option.valid? == false
    poll_option.option = '*'*79
    poll_option.valid? == true
  end
end