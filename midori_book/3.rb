N = gets.to_i
AN = gets.chomp.split.map(&:to_i)
BN = gets.chomp.split.map(&:to_i)

inner_product = AN.zip(BN).sum { |a, b| a * b }
puts inner_product.zero? ? "Yes" : "No"

# 旧バージョン
# naiseki = 0

# (0..N-1).each do |i|
#   naiseki += AN[i] * CN[i]
# end

# puts naiseki == 0 ? "Yes" : "No"