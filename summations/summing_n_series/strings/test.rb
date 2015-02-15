require_relative "solution"
require "test/unit"
class TestPalindromIndex < Test::Unit::TestCase
  def test_base
    #aaab
    #baa
    #aaa
    assert_equal(3, palindrome_index("aaab"))
    assert_equal(0, palindrome_index("baa"))
    assert_equal(-1, palindrome_index("aaa"))
  end

  def test_from_file
    assert_equal(1, palindrome_index("quyjjdcgsvvsgcdjjyq"))
    assert_equal(8, palindrome_index("hgygsvlfwcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcflvsgygh"))
    assert_equal(33, palindrome_index("fgnfnidynhxebxxxfmxixhsruldhsaobhlcggchboashdlurshxixmfxxxbexhnydinfngf"))
    assert_equal(23, palindrome_index("bsyhvwfuesumsehmytqioswvpcbxyolapfywdxeacyuruybhbwxjmrrmjxwbhbyuruycaexdwyfpaloyxbcpwsoiqtymhesmuseufwvhysb"))
    assert_equal(25, palindrome_index("fvyqxqxynewuebtcuqdwyetyqqisappmunmnldmkttkmdlnmnumppasiqyteywdquctbeuwenyxqxqyvf"))
    assert_equal(44, palindrome_index("mmbiefhflbeckaecprwfgmqlydfroxrblulpasumubqhhbvlqpixvvxipqlvbhqbumusaplulbrxorfdylqmgfwrpceakceblfhfeibmm"))
    assert_equal(20, palindrome_index("tpqknkmbgasitnwqrqasvolmevkasccsakvemlosaqrqwntisagbmknkqpt"))
    assert_equal(-1, palindrome_index("lhrxvssvxrhl"))
    assert_equal(14, palindrome_index("prcoitfiptvcxrvoalqmfpnqyhrubxspplrftomfehbbhefmotfrlppsxburhyqnpfmqlaorxcvtpiftiocrp"))
    assert_equal(-1, palindrome_index("kjowoemiduaaxasnqghxbxkiccikxbxhgqnsaxaaudimeowojk"))
  end
end
