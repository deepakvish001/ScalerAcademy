require "test_helper"

class Interviews::TimeWindowTest < ActiveSupport::TestCase
  test "recognises a valid window" do
    window = Interviews::TimeWindow.new(starts_at: Time.zone.parse("2026-01-01 10:00"), ends_at: Time.zone.parse("2026-01-01 11:00"))
    assert window.valid?
  end

  test "detects overlapping windows" do
    first = Interviews::TimeWindow.new(starts_at: Time.zone.parse("2026-01-01 10:00"), ends_at: Time.zone.parse("2026-01-01 11:00"))
    second = Interviews::TimeWindow.new(starts_at: Time.zone.parse("2026-01-01 10:30"), ends_at: Time.zone.parse("2026-01-01 11:30"))
    assert first.overlaps?(second)
  end
end
