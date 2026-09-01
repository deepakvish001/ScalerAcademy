module Interviews
  class AvailabilityChecker
    def initialize(scope = Interview.all)
      @detector = ConflictDetector.new(scope)
    end

    def available?(starts_at:, ends_at:, interviewer_email:, student_email:)
      @detector.call(
        starts_at: starts_at,
        ends_at: ends_at,
        interviewer_email: interviewer_email,
        student_email: student_email
      ).none?
    end
  end
end
