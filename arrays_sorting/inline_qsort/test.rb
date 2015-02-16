require_relative "solution"
require "test/unit"
class TestInlineQsort < Test::Unit::TestCase
  def test_try
    $arr = [1,3,9,8,2,7,5]
    assert_equal(3, partition(0,6))
    sorting(0,$arr.length-1)
    assert_equal([1,2,3,5,7,8,9], $arr)
    $arr = [9, 8, 6, 7, 3, 5, 4, 1, 2]
    sorting(0, $arr.length-1)
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9],$arr)
  end
end
