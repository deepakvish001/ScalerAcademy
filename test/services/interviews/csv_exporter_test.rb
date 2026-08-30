require "test_helper"

class Interviews::CsvExporterTest < ActiveSupport::TestCase
  test "exports headers and participant emails" do
    interview = Interview.create!(InterviewerMail: "mentor@example.com", StudentMail: "student@example.com", start_time: 1.hour.from_now, end_time: 2.hours.from_now)
    csv = Interviews::CsvExporter.new([interview]).call
    assert_includes csv, "interviewer_email"
    assert_includes csv, "student@example.com"
  end
end
