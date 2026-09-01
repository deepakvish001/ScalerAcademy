module Interviews
  class UpcomingQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(from: Time.current)
      @scope.where("start_time >= ?", from).order(start_time: :asc)
    end
  end
end
