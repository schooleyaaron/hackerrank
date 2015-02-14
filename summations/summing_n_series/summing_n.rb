def summing_n(n)
  count = 0
  (1..n).each do |i|
    count += n_series(i)
  end
  return count
end

def n_series(n)
  return ((n*n)-(n-1)*(n-1)) % (1000000000+7)
end
