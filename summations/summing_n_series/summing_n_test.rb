require_relative "summing_n"
require "test/unit"
class TestSumming < Test::Unit::TestCase

  def test_base
    assert_equal(4,summing_n(2))
    assert_equal(1, summing_n(1))
  end

end
