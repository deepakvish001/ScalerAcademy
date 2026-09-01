require "test_helper"

class Interviews::PastQueryTest < ActiveSupport::TestCase
  test "returns completed interviews" do
    past = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 2.hours.ago, end_time: 1.hour.ago)
    assert_includes Interviews::PastQuery.new.call, past
  end
end
