module Interviews
  class PastQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(before: Time.current)
      @scope.where("end_time < ?", before).order(end_time: :desc)
    end
  end
end
