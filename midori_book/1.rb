A, B, C = gets.split.map(&:to_i)
if A**2 + B**2 < C**2
  puts "Yes"
else
  puts "No"
end