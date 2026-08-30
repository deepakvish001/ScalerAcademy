module Interviews
  class EmailNormalizer
    def self.call(value)
      value.to_s.strip.downcase
    end
  end
end
