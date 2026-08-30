require "test_helper"

class Interviews::ConflictDetectorTest < ActiveSupport::TestCase
  test "finds an overlapping interviewer booking" do
    existing = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "first@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    matches = Interviews::ConflictDetector.new.call(starts_at: existing.start_time + 10.minutes, ends_at: existing.end_time, interviewer_email: "mentor@example.com")
    assert_includes matches, existing
  end
end
