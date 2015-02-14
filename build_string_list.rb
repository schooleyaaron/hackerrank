class BuildStringList

  def initialize(input = "")
    # Instance variables
    @string = input
  end

  def string
    @string
  end
  def string= string
    @string = string
  end

  def append(s, arr)
    if arr == nil
      return []
    end
    arr.each_with_index do |val, i|
      arr[i] = s + val
    end
    return arr
  end

  def get_list_recur(str)
    if str.length == 1
      return [str]
    end
    final = []
    str.split("").each_with_index do |val, i|
      final << val
      final += append(val, get_list_recur(str[i+1..-1]))
    end
    return final
  end

  def get_string_list
    final = get_list_recur(@string)

    #requirements are for strings to be in lexicographic order
    return final.sort
  end
end
