module Interviews
  class Statistics
    def initialize(scope = Interview.all, now: Time.current)
      @scope = scope
      @now = now
    end

    def call
      {
        total: @scope.count,
        upcoming: @scope.where("start_time > ?", @now).count,
        completed: @scope.where("end_time < ?", @now).count,
        unscheduled: @scope.where(start_time: nil).or(@scope.where(end_time: nil)).count
      }
    end
  end
end
