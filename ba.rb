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