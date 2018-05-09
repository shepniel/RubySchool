require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "invalid event should not be saved" do
  	event = Event.new
  	refute event.save
  end

   test "valid event should be saved" do
  	event = Event.new(name: "RubySchool", start_date: DateTime.now, end_date: 6.weeks.from_now)
  	assert event.save
  end

end
