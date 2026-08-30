module Interviews
  class JsonExporter
    FIELDS = %i[id InterviewerMail StudentMail start_time end_time].freeze

    def initialize(interviews)
      @interviews = interviews
    end

    def call
      @interviews.as_json(only: FIELDS)
    end
  end
end
