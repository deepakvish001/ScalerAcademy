require "test_helper"

class Interviews::StatisticsTest < ActiveSupport::TestCase
  test "counts total and upcoming interviews" do
    Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    result = Interviews::Statistics.new.call
    assert_equal Interview.count, result[:total]
    assert_operator result[:upcoming], :>=, 1
  end
end
