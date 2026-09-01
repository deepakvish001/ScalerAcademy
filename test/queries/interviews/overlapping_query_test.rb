require "test_helper"

class Interviews::OverlappingQueryTest < ActiveSupport::TestCase
  test "returns records that overlap the supplied window" do
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    result = Interviews::OverlappingQuery.new.call(starts_at: interview.start_time + 5.minutes, ends_at: interview.end_time + 1.hour)
    assert_includes result, interview
  end
end
