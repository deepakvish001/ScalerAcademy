module Interviews
  class CalendarEvent
    def initialize(interview)
      @interview = interview
    end

    def to_h
      {
        title: "Interview",
        starts_at: @interview.start_time,
        ends_at: @interview.end_time,
        attendees: [@interview.InterviewerMail, @interview.StudentMail].compact
      }
    end
  end
end
