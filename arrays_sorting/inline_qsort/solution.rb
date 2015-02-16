$arr = []
def partition(b,e)
  p = b
  val = $arr[e]
  (b..e).each do |i|
    if val > $arr[i]
      temp = $arr[i]
      $arr[i] = $arr[p]
      $arr[p] = temp
      p+=1
    end
  end
  temp = $arr[p]
  $arr[p] = val
  $arr[e] = temp
  puts $arr.join(" ")
  return p
end

def sorting(b,e)
  if b-e == 0
    return
  end
  p = partition(b,e)
  if p-1 > b
    sorting(b, p-1)
  end
  if p+1 < e
    sorting(p+1,e)
  end
end

def qsort(input)
  $arr = input.chomp.split(" ").map(&:to_i)
  sorting(0, $arr.length-1)
  return [1,2,3]
end
if __FILE__ == $0
  a = gets
  qsort(gets)
end
