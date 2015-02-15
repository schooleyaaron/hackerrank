def anagram(s)
  #requirements state odd length returns -1
  if s.length % 2 == 1
    return -1
  end
  #split array in half
  a = s[0..(s.length/2-1)].split('').sort()
  b = s[s.length/2..-1].split('').sort()
  i = 0
  j = 0
  count = 0
  while i < a.length
    #when we reach the end of the second array, the remaining letters
    #of the first will need changed
    if j == b.length
      count+=1
      i+=1
    #if the ASCII value of the letter in first array is greater
    #we increment index second
    elsif a[i].ord > b[j].ord
      j+=1
    #if first value is less, we know it is not in second
    elsif a[i].ord < b[j].ord
      count+=1
      i+=1
    #if there is a match, increment both
    else
      i+=1
      j+=1
    end
  end
  return count
end
#New thing I learned. This will allow me to run tests against the
#method without executing the whole file
if __FILE__ == $0
  gets.to_i.times do
    puts anagram(gets.strip)
  end
end
