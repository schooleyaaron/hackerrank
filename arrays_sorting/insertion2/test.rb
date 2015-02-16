require_relative "solution"
require "test/unit"
class TestInsertion < Test::Unit::TestCase
  def test_base_case
    assert_equal([1,2,3,4,5,6],insertion("1 4 3 5 6 2"))
  end
end
