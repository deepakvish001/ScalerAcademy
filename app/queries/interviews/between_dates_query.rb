module Interviews
  class BetweenDatesQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(starts_at:, ends_at:)
      @scope.where(start_time: starts_at..ends_at).order(:start_time)
    end
  end
end
