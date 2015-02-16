#code from /qsort1/
def  partition( ar)
  if ar.length <= 1
    return ar
  end
  left = []
  right = []
  (1..ar.length-1).each do |i|
    if ar[0] <= ar[i]
      right << ar[i]
    elsif ar[0] > ar[i]
      left << ar[i]
    end
  end

  if left.length > 1
    left = partition(left)
    puts left.join(" ")
  end
  if right.length > 1
    right = partition(right)
    puts right.join(" ")
  end
  return left + [ar[0]] + right
end
if __FILE__ == $0
  cnt = gets.to_i;
  ar = gets.chomp.split(" ").map(&:to_i)
  puts partition(ar).join(" ")
end
