N, X = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

puts A.reject { |a| a == X }.join(" ")

# 旧バージョン  
# ans = []

# A.each do |a|
#   if a != X
#     ans << a
#   end
# end

# puts ans.join(" ")