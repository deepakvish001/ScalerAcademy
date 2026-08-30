module Interviews
  class ScheduleValidator
    def initialize(starts_at:, ends_at:)
      @starts_at = starts_at
      @ends_at = ends_at
    end

    def errors
      messages = []
      messages << "start time is required" if @starts_at.blank?
      messages << "end time is required" if @ends_at.blank?
      if @starts_at.present? && @ends_at.present? && @ends_at <= @starts_at
        messages << "end time must be after start time"
      end
      messages
    end

    def valid?
      errors.empty?
    end
  end
end
