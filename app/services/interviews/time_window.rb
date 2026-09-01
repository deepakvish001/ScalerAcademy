module Interviews
  class TimeWindow
    attr_reader :starts_at, :ends_at

    def initialize(starts_at:, ends_at:)
      @starts_at = starts_at
      @ends_at = ends_at
    end

    def valid?
      starts_at.present? && ends_at.present? && ends_at > starts_at
    end

    def overlaps?(other)
      return false unless valid? && other.valid?

      starts_at < other.ends_at && ends_at > other.starts_at
    end
  end
end
