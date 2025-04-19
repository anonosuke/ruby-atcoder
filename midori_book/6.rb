N = gets.to_i
A = Array.new(N) { gets.split}

A.sort_by! { |a, b| b.to_i }

puts A[-2][0]