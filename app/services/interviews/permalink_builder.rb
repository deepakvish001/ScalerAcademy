module Interviews
  class PermalinkBuilder
    def initialize(host:)
      @host = host.to_s.sub(%r{/+$}, "")
    end

    def call(interview)
      "#{@host}/interviews/#{interview.to_param}"
    end
  end
end
