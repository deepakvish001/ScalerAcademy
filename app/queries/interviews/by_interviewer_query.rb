module Interviews
  class ByInterviewerQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(email)
      @scope.where(InterviewerMail: EmailNormalizer.call(email)).order(start_time: :asc)
    end
  end
end
