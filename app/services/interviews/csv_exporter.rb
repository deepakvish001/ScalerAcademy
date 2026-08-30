require "csv"

module Interviews
  class CsvExporter
    HEADERS = %w[id interviewer_email student_email start_time end_time].freeze

    def initialize(interviews)
      @interviews = interviews
    end

    def call
      CSV.generate(headers: true) do |csv|
        csv << HEADERS
        @interviews.each do |interview|
          csv << [interview.id, interview.InterviewerMail, interview.StudentMail,
                  interview.start_time, interview.end_time]
        end
      end
    end
  end
end
