module Interviews
  class TimeRangePresenter
    def initialize(interview, format: "%d %b %Y, %I:%M %p")
      @interview = interview
      @format = format
    end

    def to_s
      return "Schedule pending" unless @interview.start_time && @interview.end_time

      "#{@interview.start_time.strftime(@format)} – #{@interview.end_time.strftime(@format)}"
    end
  end
end
