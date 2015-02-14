def cavity_map(input)
  #iterate each of the sub arrays in the input
  input.each_with_index do |arr,i|
    #requirements state a cavity may not be on the edge
    if i > 0 && i < (input.length - 1)
      arr.each_with_index do |val, j|
        if j > 0 && j < (arr.length - 1)
          #test adjacent items
          #if current index is greater than each adjacet, replace with X
          if (val > input[i-1][j] &&
            val > input[i+1][j] &&
            val > input[i][j-1] &&
            val > input[i][j+1])
            #9 is max value. 10 denotes a cavity to be replaced with X in final
            input[i][j] = 10
          end
        end
      end
    end
  end
  input.each_with_index do |arr,i|
    arr.each_with_index do |val, j|
      if val == 10
        input[i][j] = "X"
      end
    end
  end
  return input
end
