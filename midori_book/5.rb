N, S, D = gets.split.map(&:to_i)
XY = Array.new(N) { gets.split.map(&:to_i) }

XY.each do |x, y|
  if x < S && y > D
    puts 'Yes'
    exit
  end
end
puts 'No'