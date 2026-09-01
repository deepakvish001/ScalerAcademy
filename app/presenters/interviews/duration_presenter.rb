module Interviews
  class DurationPresenter
    def initialize(interview)
      @minutes = DurationCalculator.new(interview).minutes
    end

    def to_s
      hours, minutes = @minutes.divmod(60)
      return "#{minutes} min" if hours.zero?
      return "#{hours} hr" if minutes.zero?

      "#{hours} hr #{minutes} min"
    end
  end
end
