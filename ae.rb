# fib2.rb: フィボナッチ数を配列を使って計算するプログラム

def fib2(n) 

  fib = Array.new(n+1) # 長さ n+1 の配列 fib を作る
  fib[0] = 1           # 配列 fib の第0要素 (1番目) に1を代入
  fib[1] = 1           # 配列 fib の第1要素 (2番目) に1を代入

  for i in 2..n        # i を2から n まで順に動かして
    fib[i] = fib[i-1] + fib[i-2]
    # 配列 fib の第 i-1 要素と第 i-2 要素を足して第 i 要素に代入
  end

  fib[n]               # fib[n] を結果として返す

end

p  fib2(4)