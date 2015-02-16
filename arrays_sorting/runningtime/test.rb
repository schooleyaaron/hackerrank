require_relative "solution"
require "test/unit"
class TestRunningTime < Test::Unit::TestCase
  def test_base_case
    assert_equal(4, insertion("2 1 3 1 2"))
  end
end
