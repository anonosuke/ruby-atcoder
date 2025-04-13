# 標準入力セット
## 1行1列データ
``` ruby
# 文字列として受け取る場合
s = gets.chomp

# 整数として受け取る場合
n = gets.to_i

# 浮動小数点数 (小数) として受け取る場合
f = gets.to_f
```

## (1,N)行列データ (スペース区切り)
### 文字列
入力形式
```
A B C ...
Alice Bob Charlie
```

``` ruby
# 配列 (Array) として受け取る場合
s_array = gets.chomp.split

#=> ["Alice", "Bob", "Charlie"]
#=> s_array[0] は "Alice"
#=> s_array[0][0] は "A"

# 各変数に直接代入する場合 (要素数が少ない場合)
a, b, c = gets.chomp.split

#=> a は "Alice", b は "Bob", c は "Charlie"
```

### 数値
入力形式
```
1 3 5 7 9
```

``` ruby
# 整数配列 (Array) として受け取る場合
int_array = gets.chomp.split.map(&:to_i)
# または
# int_array = gets.chomp.split.map { |s| s.to_i }

#=> [1, 3, 5, 7, 9]

# 各変数に直接代入する場合 (要素数が少ない場合)
a, b = gets.chomp.split.map(&:to_i)

#=> a は 1, b は 3

# 整数配列 (Array) として受け取る場合
int_array = gets.chomp.split.map(&:to_i)
# または
# int_array = gets.chomp.split.map { |s| s.to_i }

#=> [1, 3, 5, 7, 9]

# 各変数に直接代入する場合 (要素数が少ない場合)
a, b = gets.chomp.split.map(&:to_i)

#=> a は 1, b は 3
```

## (N,1)行列データ (改行区切り)
### 文字列
入力形式
```
N M  # (例: 最初の行に追加情報がある場合)
A1
A2
...
AN
```

``` ruby 
n, m = gets.chomp.split.map(&:to_i) # 例

# m 行分のデータを読み込み、文字列の配列に格納
s_array = Array.new(m) { gets.chomp }

#=> ["apple", "banana", "orange"] のような配列になる
```

### 整数
```
3 4  # (ここでは M = 4 が A の個数)
2
3
3
1
```

``` ruby
# 最初の行を読む (必要ない場合もある)
n, m = gets.chomp.split.map(&:to_i)

# m 行分のデータを読み込み、整数の配列に格納
a = Array.new(m) { gets.to_i }
# または ループを使う場合
# a = []
# m.times do
#   a << gets.to_i
# end

#=> [2, 3, 3, 1]
```

## (N,M)行列データ
入力形式
```
N
x1 x2 x3 ... xN
y1 y2 y3 ... yN
```

``` ruby 
n = gets.to_i
x = gets.chomp.split.map(&:to_i)
y = gets.chomp.split.map(&:to_i)

#=> x は [1, 2, 3]
#=> y は [4, 5, 6]
```

入力形式
```
N
x1 y1
x2 y2
...
xN yN
```

``` ruby
n = gets.to_i
# まず [xi, yi] の配列として読み込む
xy_pairs = Array.new(n) { gets.chomp.split.map(&:to_i) }

# transpose を使って x と y の配列に分ける
x, y = xy_pairs.transpose

#=> x は [1, 3, 5, 7, 9]
#=> y は [2, 4, 6, 8, 10]
#=> x[1] + y[1] は 3 + 4 = 7
```

