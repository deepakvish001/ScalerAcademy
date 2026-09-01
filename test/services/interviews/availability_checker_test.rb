require "test_helper"

class Interviews::AvailabilityCheckerTest < ActiveSupport::TestCase
  test "reports an unused slot as available" do
    checker = Interviews::AvailabilityChecker.new(Interview.none)
    assert checker.available?(starts_at: 1.day.from_now, ends_at: 1.day.from_now + 1.hour, interviewer_email: "mentor@example.com", student_email: "student@example.com")
  end
end
