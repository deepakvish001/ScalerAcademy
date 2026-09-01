module Interviews
  class OverlappingQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(starts_at:, ends_at:)
      @scope.where("start_time < ? AND end_time > ?", ends_at, starts_at)
        .order(:start_time)
    end
  end
end
