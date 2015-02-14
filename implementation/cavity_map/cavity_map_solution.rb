require_relative "cavity_map"

times = gets.to_i
input = []
times.times do
  input << gets.strip.split("").map(&:to_i)
end
output = cavity_map(input)
output.each do |val|
  puts val.join("")
end
