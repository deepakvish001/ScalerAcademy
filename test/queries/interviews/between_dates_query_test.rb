require "test_helper"

class Interviews::BetweenDatesQueryTest < ActiveSupport::TestCase
  test "returns interviews inside a range" do
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 2.days.from_now, end_time: 2.days.from_now + 1.hour)
    result = Interviews::BetweenDatesQuery.new.call(starts_at: 1.day.from_now, ends_at: 3.days.from_now)
    assert_includes result, interview
  end
end
