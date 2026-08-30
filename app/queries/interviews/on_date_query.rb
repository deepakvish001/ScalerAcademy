module Interviews
  class OnDateQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(date, zone: Time.zone)
      day = zone.parse(date.to_s)
      @scope.where(start_time: day.beginning_of_day..day.end_of_day).order(:start_time)
    end
  end
end
