require_relative "solution"
require "test/unit"
class TestRunningTime < Test::Unit::TestCase
  def test_base_case
    assert_equal([3,2,4,5,7], partition("4 5 3 7 2".chomp.split(" ").map(&:to_i)))
    assert_equal([2,10,3,7,9,4,6,12,8], partition("2 10 3 7 9 4 6 12 8".chomp.split(" ").map(&:to_i)))
  end
end
