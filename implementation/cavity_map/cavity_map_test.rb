require_relative 'cavity_map'
require 'test/unit'
class CavityMapTest < Test::Unit::TestCase
  def test_base_case
    input = [[1,1,1,2],[1,9,1,2],[1,8,9,2],[1,2,3,4]]
    output = [[1,1,1,2],[1,"X",1,2],[1,8,"X",2],[1,2,3,4]]
    assert_equal(output, cavity_map(input))
  end
  def test_no_possible_cavity
    input = [[1]]
    output = [[1]]
    assert_equal(output, cavity_map(input))

    input = [[5,6],[3,1]]
    output = [[5,6],[3,1]]
    assert_equal(output, cavity_map(input))
    input = [[2,2,2],[2,2,2],[2,2,2]]
    output = [[2,2,2],[2,2,2],[2,2,2]]
    assert_equal(output, cavity_map(input))
  end
  def test_right_edge_not_cavity
    input = [[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,3],[2,2,2,2,2],[2,2,2,2,2]]
    output = [[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,3],[2,2,2,2,2],[2,2,2,2,2]]
    assert_equal(output, cavity_map(input))
  end
end
