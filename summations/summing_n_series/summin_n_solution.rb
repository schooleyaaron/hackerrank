# n^2 - (n-1)^2 reduces to n^2
gets.to_i.times do
  n = gets.to_i
  #requirements state the answer should be modulo 10^9+7
  puts n * n % (1000000000+7)
end
