require "test_helper"

class Interviews::CalendarEventTest < ActiveSupport::TestCase
  test "serializes schedule and attendees" do
    interview = Interview.new(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    event = Interviews::CalendarEvent.new(interview).to_h
    assert_equal "Interview", event[:title]
    assert_equal ["mentor@example.com", "student@example.com"], event[:attendees]
  end
end
