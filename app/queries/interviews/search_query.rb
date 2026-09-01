module Interviews
  class SearchQuery
    def initialize(scope = Interview.all)
      @scope = scope
    end

    def call(term)
      value = term.to_s.strip
      return @scope.all if value.blank?

      pattern = "%#{ActiveRecord::Base.sanitize_sql_like(value)}%"
      @scope.where("InterviewerMail LIKE :pattern OR StudentMail LIKE :pattern", pattern: pattern)
    end
  end
end
