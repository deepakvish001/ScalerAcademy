module Interviews
  class ConflictDetector
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(starts_at:, ends_at:, interviewer_email: nil, student_email: nil)
      relation = @scope.where("start_time < ? AND end_time > ?", ends_at, starts_at)
      relation = relation.where(InterviewerMail: interviewer_email) if interviewer_email.present?
      relation = relation.or(@scope.where(StudentMail: student_email)
        .where("start_time < ? AND end_time > ?", ends_at, starts_at)) if student_email.present?
      relation.distinct
    end
  end
end
