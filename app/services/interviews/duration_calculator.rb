module Interviews
  class DurationCalculator
    def initialize(interview)
      @interview = interview
    end

    def minutes
      return 0 unless @interview.start_time && @interview.end_time

      ((@interview.end_time - @interview.start_time) / 60).round
    end
  end
end
