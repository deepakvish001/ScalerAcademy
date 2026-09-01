require "test_helper"

class Interviews::SearchQueryTest < ActiveSupport::TestCase
  test "searches both participant email columns" do
    match = Interview.create!(InterviewerMail: "unique.mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    assert_includes Interviews::SearchQuery.new.call("unique.mentor"), match
  end
end
