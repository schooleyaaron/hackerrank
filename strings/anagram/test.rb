require_relative "solution"
require "test/unit"
class TestAnagram < Test::Unit::TestCase

  def test_try
    assert_equal(3,anagram("aaabbb"))
    assert_equal(1,anagram("ab"))
    assert_equal(-1,anagram("abc"))
    assert_equal(2,anagram("mnop"))
    assert_equal(0,anagram("xyyx"))
    assert_equal(1,anagram("xaxbbbxx"))
    assert_equal(2,anagram("aabb"))
    assert_equal(26,anagram("aujteqimwfkjoqodgqaxbrkrwykpmuimqtgulojjwtukjiqrasqejbvfbixnchzsahpnyayutsgecwvcqngzoehrmeeqlgknnb"))
    assert_equal(10, anagram("hhpddlnnsjfoyxpciioigvjqzfbpllssuj"))
    assert_equal(13, anagram("xulkowreuowzxgnhmiqekxhzistdocbnyozmnqthhpievvlj"))
  end

end
