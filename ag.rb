# fact2.rb
# n の階乗を求めるプログラム

def fact2(n)
  f = 1
  for i in 1..n
    f = f * i
  end
  f
end