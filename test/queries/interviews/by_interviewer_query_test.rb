require "test_helper"

class Interviews::ByInterviewerQueryTest < ActiveSupport::TestCase
  test "matches a normalized interviewer email" do
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    assert_includes Interviews::ByInterviewerQuery.new.call(" Mentor@Example.COM "), interview
  end
end
