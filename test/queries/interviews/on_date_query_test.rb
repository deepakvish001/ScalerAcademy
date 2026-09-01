require "test_helper"

class Interviews::OnDateQueryTest < ActiveSupport::TestCase
  test "returns interviews scheduled on the requested day" do
    date = Date.current + 3.days
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: date.in_time_zone.change(hour: 10), end_time: date.in_time_zone.change(hour: 11))
    assert_includes Interviews::OnDateQuery.new.call(date), interview
  end
end
