require_relative "insertion"
require_relative "qsort"
require "test/unit"
class TestRunning < Test::Unit::TestCase
  def test_base
    assert_equal(1, insertion("1 3 9 8 2 7 5") - qsort("1 3 9 8 2 7 5"))
  end
end
