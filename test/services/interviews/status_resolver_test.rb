require "test_helper"

class Interviews::StatusResolverTest < ActiveSupport::TestCase
  test "resolves upcoming interviews" do
    interview = Struct.new(:start_time, :end_time).new(1.hour.from_now, 2.hours.from_now)
    assert_equal :upcoming, Interviews::StatusResolver.new(interview).call
  end

  test "resolves completed interviews" do
    interview = Struct.new(:start_time, :end_time).new(2.hours.ago, 1.hour.ago)
    assert_equal :completed, Interviews::StatusResolver.new(interview).call
  end
end
