module Interviews
  class ReminderSchedule
    DEFAULT_OFFSETS = [24.hours, 1.hour].freeze

    def initialize(interview, offsets: DEFAULT_OFFSETS)
      @interview = interview
      @offsets = offsets
    end

    def times(now: Time.current)
      return [] unless @interview.start_time

      @offsets.map { |offset| @interview.start_time - offset }
        .select { |time| time > now }
        .sort
    end
  end
end
