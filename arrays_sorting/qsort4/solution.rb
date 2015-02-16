#copied from /arrays_sorting/insertion2/
def insertion(input)
  shifts = 0
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
        shifts+=1
      end
      #out of loop, item inserted, requirements state to print
      #puts arr.join(" ")
    end
  end
  return shifts
end

$arr = []
$count = 0
def partition(b,e)
  p = b
  val = $arr[e]
  (b..e).each do |i|
    if val > $arr[i]
      $count+=1
      temp = $arr[i]
      $arr[i] = $arr[p]
      $arr[p] = temp
      p+=1
    end
  end
  temp = $arr[p]
  $arr[p] = val
  $arr[e] = temp
  $count+=1
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
  $count = 0
  $arr = input.chomp.split(" ").map(&:to_i)
  sorting(0, $arr.length-1)
  return $count
end
if __FILE__ == $0
  a = gets
  input = gets
  puts insertion(input)-qsort(input)
end
