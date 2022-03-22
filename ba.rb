def flt(a, i)
  b = [0]+a
  s = b[i]
  l = b.length
  if s <= l then
    c = (0..(l-1)).to_a.select{|v| v%s != 0}.map{|v| b[v]}
    return flt(c, i+1)
  else
    return a
  end
end

def luc(n)
  return flt((0..n).to_a.select{|x| x%2 != 0}, 2)
end

print(luc(100)) # 100までの幸運数を表示


def sieve(a,i,f)
  b = a.select{|x| x<=Math.sqrt(i)}.map{|x| i%x != 0}.all?
  if (b) then
    a = a + [i]
    if a.select{|x| x==(i-f)}.length>0 then
      return a
    end
  end
  return sieve(a,i+1,f)
end

def twin(f,c)
  return (0..(c-1)).to_a.inject([[2],[]]){|a,_|
    b = sieve(a[0],a[0].last+1,f)
    [b,a[1]+[b.last]]
  }[1].map{|x| [x-f,x]}
end

print(twin(2,10)) # 双子素数を10組表示
print(twin(4,10)) # いとこ素数を10組表示
print(twin(6,10)) # セクシー素数を10組表示


def sosu(a)
  return a[0] > Math.sqrt(a.last) ? a :
    [a[0]] + sosu(a.drop(1).select{|x| x%a[0] != 0})
end

print(sosu((2..100).to_a)) # 100までの素数を表示

num = gets.chomp.split(" ").map(&:to_i)
x = num[0]
i = 1
array = []
while i <= 10
  array << x
  x = x + num[1]
  i += 1
end
print array.join(" ")


require 'benchmark'

n = 35
Benchmark.bm(7) do |x|
  x.report("memo") {
    # 修正前(メモがメソッドの定義内なので効果なし)
    def fibonacci(input)
      memo = { 1=> 1, 2=> 1 }
      return memo[input] if memo.has_key?(input)
      memo[input] = fibonacci(input - 2) + fibonacci(input - 1)
    end
    fibonacci(n)
  }
  x.report("@memo") {
    # 修正後(メモがメソッドのスコープ外なので効果あり)
    @memo = { 1=> 1, 2=> 1 }
    def fibonacci(input)
      return @memo[input] if @memo
      @memo[input] = fibonacci(input - 2) + fibonacci(input - 1)
    end
    fibonacci(n)
  }
end

num = gets.chomp.split(" ").map(&:to_i)
x = num[0]
i = 1
array = []
while i <= 10
  array << x
  x = x + num[1]
  i += 1
end
print array.join(" ")

def tribonacci(n)
  return   if n < 1
  a, b, c = 0, 0, 1
  (n - 1).times { a, b, c = b, c, a + b + c }
  a
end

puts "数を出したいのは何項目ですか？"
n = gets.to_i  
# -> 11を入力
puts "#{n}項目の数字は#{tribonacci(n)}" 
# -> 11項目の数字は81
# プラス演算子で配列を結合する
arr1 = [2, 4, 6, 8]
arr2 = [3, 6, 9, 12]
arr3 = arr1 + arr2
p arr3 # => 実行結果：[2, 4, 6, 8, 3, 6, 9, 12]
p arr1 # => 元の配列は変化しない：[2, 4, 6, 8]
p arr2 # => 元の配列は変化しない：[3, 6, 9, 12]

# Array.concatメソッドで配列を結合する
arr1 = [2, 4, 6, 8]
arr2 = [3, 6, 9, 12]
arr1.concat(arr2)
p arr1 # => 元の配列が変化する：[2, 4, 6, 8, 3, 6, 9, 12]
p arr2 # => 追加した配列側は変化しない：[3, 6, 9, 12]

# Array.deleteメソッド 
arr = [10, 20, 30, 10, 40, 50, 60]
arr.delete(10)
p arr # => 実行結果：[20, 30, 40, 50, 60]

# Array.delete_atメソッド
arr.delete_at(2)
p arr # => 実行結果：[20, 30, 50, 60]

num = gets.chomp.split(" ").map(&:to_i)
x = num[0]
i = 1
array = []
while i <= 10
  array << x
  x = x + num[1]
  i += 1
end
print array.join(" ")