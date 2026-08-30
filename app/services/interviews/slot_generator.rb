module Interviews
  class SlotGenerator
    def initialize(starts_at:, ends_at:, duration: 60.minutes, interval: 15.minutes)
      @starts_at = starts_at
      @ends_at = ends_at
      @duration = duration
      @interval = interval
    end

    def call
      slots = []
      cursor = @starts_at
      while cursor + @duration <= @ends_at
        slots << TimeWindow.new(starts_at: cursor, ends_at: cursor + @duration)
        cursor += @interval
      end
      slots
    end
  end
end
