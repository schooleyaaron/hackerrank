def palindrome_index(s)
  s = s.strip.split("")
  e = s.length - 1
  r = -1
  s.each_with_index do |val, i|
    #puts "val: "+val
    if s[i] != s[e]
      x = i
        y = e
        while s[x] == s[y-1] && s[x+1] == s[y]
            x+=1
            y-=1
        end
        if s[x] == s[y-1]
            r = e
            break
        else
            r = i
            break
        end
      end
      e -= 1
  end
  return r
end
