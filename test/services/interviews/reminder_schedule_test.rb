require "test_helper"

class Interviews::ReminderScheduleTest < ActiveSupport::TestCase
  test "returns only future reminder times" do
    interview = Struct.new(:start_time).new(2.hours.from_now)
    times = Interviews::ReminderSchedule.new(interview).times
    assert_equal 1, times.length
    assert_in_delta 1.hour.from_now.to_f, times.first.to_f, 2
  end
end
