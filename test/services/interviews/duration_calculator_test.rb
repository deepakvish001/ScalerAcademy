require "test_helper"

class Interviews::DurationCalculatorTest < ActiveSupport::TestCase
  test "returns elapsed minutes" do
    interview = Struct.new(:start_time, :end_time).new(Time.zone.parse("2026-01-01 10:00"), Time.zone.parse("2026-01-01 11:30"))
    assert_equal 90, Interviews::DurationCalculator.new(interview).minutes
  end

  test "returns zero for an incomplete schedule" do
    assert_equal 0, Interviews::DurationCalculator.new(Struct.new(:start_time, :end_time).new(nil, nil)).minutes
  end
end
