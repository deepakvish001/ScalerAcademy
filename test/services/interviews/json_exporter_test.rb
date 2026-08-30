require "test_helper"

class Interviews::JsonExporterTest < ActiveSupport::TestCase
  test "exports only supported interview fields" do
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    payload = Interviews::JsonExporter.new([interview]).call.first
    assert_equal "mentor@example.com", payload["InterviewerMail"]
    assert_not payload.key?("created_at")
  end
end
