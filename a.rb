

#while
 i = 1
while i <= 10
    puts i
    i = i+1
end

#2次元配列
numbers = Array.new(4).map{Array.new(3,1)}
numbers =[0][1] = 2
p numbers

# 2次元配列を作成してみよう
a = Array.new(5).map{Array.new(4,7)}
p a

# 自分の得意な言語で
# Let's チャレンジ！！

a = gets.chomp
b = gets

puts a
puts b

10.times do
   a = gets.chomp
   puts a
end

a = Array.new(5)

5.times { |i| a[i] = gets.to_i }

a.each { |val| puts val }

# fib_string.rb
# フィボナッチ数の計算結果を文字列で返すプログラム

def fib_string(n)
  string = "1"
  for k in 1..n
    string = string + ", " + fib(k).to_s
  end
  string
end

def fib(n)
  if n == 0 || n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

# fib_string_r.rb
# フィボナッチ数の計算結果を文字列で返すプログラム (再帰関数)

def fib_string(n)
  fib_string_r(n, 0, fib(0).to_s)
end

def fib_string_r(n, k, string)
  if n == k
    string
  else
    fib_string_r(n, k+1, string + ", " + fib(k+1).to_s)
  end
end

def fib(n)
  if n == 0 || n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end