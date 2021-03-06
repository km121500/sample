

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

# primes_all.rb
# 数の最初の n 個を配列で返すプログラム

def primes_all(n)

  primes = Array.new(n)
  count = 0
  number = 2

  while count < n
    if prime(number)
      primes[count] = number
      count = count + 1
    end
    number = number + 1
  end

  primes

end

def prime(n)
  if n < 2
    false
  else
    ans = true
    div = 2
    while div <= n / 2 && ans == true
      if n % div == 0
        ans = false
      end
      div = div + 1
    end
    ans
  end
end

# primes_all_r.rb
# 数の最初の n 個を配列で返すプログラム (再帰関数)

def primes_all(n)

  primes_all_r(n, 2, Array.new(n), 0)

end

def primes_all_r(n, number, primes, count)

  if count >= n
    primes
  elsif prime(number)
    primes[count] = number
    primes_all_r(n, number + 1, primes, count + 1)
  else
    primes_all_r(n, number + 1, primes, count)
  end

end

def prime(n)

  prime_r(n, n-1)

end

def prime_r(n, m)

  if m <= 1
    true
  elsif n % m == 0
    false
  else
    prime_r(n, m-1)
  end

end

# divisor_string.rb
# 正の整数 n の全ての約数を文字列として返すプログラム

def divisor_string(n)
  result =""
  for k in 1..n
    if n % k == 0
      if result == ""
        result = k.to_s
      else
        result = result + ", " + k.to_s
      end
    end
  end
  result
end

# divisor_string_r.rb
# 正の整数 n の全ての約数を文字列として返すプログラム (再帰)

def divisor_string(n)
  divisor_string_r(n, 2, "1")
end

def divisor_string_r(n, div, string)
  if div > n
    string
  elsif n % div == 0
    divisor_string_r(n, div+1, string + ", " + div.to_s)
  else
    divisor_string_r(n, div+1, string)
  end
end

# sum3.rb
# n から m までを足す関数 (for 文)
# 計算の途中経過を表示する．

def sum3(n, m)
  s = 0
  for i in n..m  # i を n から m まで 1 ずつ増やして以下の計算を行う．
    s = s + i
    print(s, "\n")
    # 結果を表示
    # s の値を表示して，改行 "\n" で指示
  end
  s
end
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