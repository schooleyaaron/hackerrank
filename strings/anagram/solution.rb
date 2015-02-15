def anagram(s)
  #requirements state odd length returns -1
  if s.length % 2 == 1
    return -1
  end
  a = s[0..(s.length/2-1)].split('').sort()
  b = s[s.length/2..-1].split('').sort()
  i = 0
  j = 0
  count = 0
  while i < a.length
    if j == b.length
      count+=1
      i+=1
    elsif a[i].ord > b[j].ord
      j+=1
    elsif a[i].ord < b[j].ord
      count+=1
      i+=1
    else
      i+=1
      j+=1
    end
  end
  return count
end
if __FILE__ == $0
  gets.to_i.times do
    puts anagram(gets.strip)
  end
end
