require "test_helper"

class Interviews::UpcomingQueryTest < ActiveSupport::TestCase
  test "returns future interviews in chronological order" do
    later = Interview.create!(InterviewerMail: "later@example.com", StudentMail: "student@example.com", start_time: 3.hours.from_now, end_time: 4.hours.from_now)
    sooner = Interview.create!(InterviewerMail: "sooner@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    assert_equal [sooner, later], Interviews::UpcomingQuery.new(Interview.where(id: [later.id, sooner.id])).call.to_a
  end
end
