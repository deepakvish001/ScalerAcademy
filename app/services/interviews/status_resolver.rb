module Interviews
  class StatusResolver
    def initialize(interview, now: Time.current)
      @interview = interview
      @now = now
    end

    def call
      return :unscheduled unless @interview.start_time && @interview.end_time
      return :upcoming if @now < @interview.start_time
      return :in_progress if @now <= @interview.end_time

      :completed
    end
  end
end
