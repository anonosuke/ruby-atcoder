# 標準入力から数値を読み込み
puts "数値を入力してください："
number = gets.chomp.to_i

# 数値を2倍にする
result = number * 2

# 結果を出力
puts "入力された数値: #{number}"
puts "2倍の値: #{result}"