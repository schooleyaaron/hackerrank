def insertion(input)
  arr = input.split(" ").map(&:to_i)
  arr.each_with_index do |val, i|
    #first element is "sorted" on first iteration
    if i != 0
      index = i
      #if current number is less then previous, swap with previous
      while index > 0 && val < arr[index-1]
        temp = arr[index-1]
        arr[index - 1] = val
        arr[index] = temp
        index-=1
      end
      #out of loop, item inserted, requirements state to print
      puts arr.join(" ")
    end
  end
  return arr
end
if __FILE__ == $0
  #we dont care about size of array
  gets
  insertion(gets)
end
