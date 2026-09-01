require "test_helper"

class Interviews::ScheduleValidatorTest < ActiveSupport::TestCase
  test "accepts an increasing time range" do
    validator = Interviews::ScheduleValidator.new(starts_at: 1.hour.from_now, ends_at: 2.hours.from_now)
    assert validator.valid?
  end

  test "rejects an end before the start" do
    validator = Interviews::ScheduleValidator.new(starts_at: 2.hours.from_now, ends_at: 1.hour.from_now)
    assert_includes validator.errors, "end time must be after start time"
  end
end
