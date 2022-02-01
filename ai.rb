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