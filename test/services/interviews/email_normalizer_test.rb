require "test_helper"

class Interviews::EmailNormalizerTest < ActiveSupport::TestCase
  test "trims and lowercases an email address" do
    assert_equal "student@example.com", Interviews::EmailNormalizer.call(" Student@Example.COM ")
  end

  test "converts nil to an empty string" do
    assert_equal "", Interviews::EmailNormalizer.call(nil)
  end
end
