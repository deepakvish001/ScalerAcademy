module Interviews
  class IcsExporter
    def initialize(interview)
      @interview = interview
    end

    def call
      [
        "BEGIN:VCALENDAR",
        "VERSION:2.0",
        "PRODID:-//Interview Scheduler//EN",
        "BEGIN:VEVENT",
        "UID:interview-#{@interview.id}@scheduler",
        "DTSTART:#{timestamp(@interview.start_time)}",
        "DTEND:#{timestamp(@interview.end_time)}",
        "SUMMARY:Interview",
        "END:VEVENT",
        "END:VCALENDAR"
      ].join("\r\n")
    end

    private

    def timestamp(time)
      time.utc.strftime("%Y%m%dT%H%M%SZ")
    end
  end
end
