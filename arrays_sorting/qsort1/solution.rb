#code given, my job is to fill in partition
def  partition( ar)
  left = []
  right = [ar[0]]
  (1..ar.length-1).each do |i|
    if ar[0] < ar[i]
      right << ar[i]
    elsif ar[0] >= ar[i]
      left << ar[i]
    end
  end
  return left + right
end
if __FILE__ == $0
  cnt = gets.to_i;
  ar = gets.chomp.split(" ").map(&:to_i)
  puts partition(ar).join(" ")
end
