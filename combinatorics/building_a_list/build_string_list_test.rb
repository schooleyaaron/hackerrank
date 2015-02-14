require_relative 'build_string_list'
require 'test/unit'
class BuildStringListTest < Test::Unit::TestCase
  def test_first
    assert_equal('hello world', 'hello world')
  end

  def test_substring
    assert_equal("world","hello world"[6..-1])
    assert_equal(nil,"he"[3..2])
    (1..0).each do |i|
    end
  end

  def test_object_news
    build = BuildStringList.new
    build = BuildStringList.new("ab")
    build.string = "c"
    assert_equal("c", build.string)
  end

  def test_append
    build = BuildStringList.new
    a = build.append("a", ["cd", "c"])
    puts a
  end

  def test_recur_build
    build = BuildStringList.new
    assert_equal(["a","ab","b"],build.get_list_recur("ab"))
  end

  def test_base_case
    build = BuildStringList.new("ab")
    assert_equal(["a","ab","b"], build.get_string_list())
    build.string = "xyz"
    assert_equal(["x","xy","xyz", "xz", "y", "yz", "z"], build.get_string_list())
  end
end
