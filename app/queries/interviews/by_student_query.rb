module Interviews
  class ByStudentQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(email)
      @scope.where(StudentMail: EmailNormalizer.call(email)).order(start_time: :asc)
    end
  end
end
