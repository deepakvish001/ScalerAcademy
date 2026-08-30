module Interviews
  class StatusPresenter
    LABELS = {
      unscheduled: "Schedule pending",
      upcoming: "Upcoming",
      in_progress: "In progress",
      completed: "Completed"
    }.freeze

    def initialize(interview, now: Time.current)
      @status = StatusResolver.new(interview, now: now).call
    end

    def to_s
      LABELS.fetch(@status)
    end
  end
end
