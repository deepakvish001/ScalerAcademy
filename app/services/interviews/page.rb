module Interviews
  class Page
    DEFAULT_SIZE = 20
    MAX_SIZE = 100

    attr_reader :number, :size

    def initialize(number: 1, size: DEFAULT_SIZE)
      @number = [number.to_i, 1].max
      @size = [[size.to_i, 1].max, MAX_SIZE].min
    end

    def offset
      (number - 1) * size
    end

    def apply(scope)
      scope.limit(size).offset(offset)
    end
  end
end
