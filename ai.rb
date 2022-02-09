a = ["p","d"]
puts a

def sosu(a)
  return a[0] > Math.sqrt(a.last) ? a :
    [a[0]] + sosu(a.drop(1).select{|x| x%a[0] != 0})
end

print(sosu((2..100).to_a)) # 100までの素数を表示

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

def pas(n)
  if n<1 then
    return [1]
  else
    a = pas(n-1)
    return ([0]+a).zip(a+[0]).map{|v| v.inject(:+)}
  end
end

print((0..9).to_a.map{|v| pas(v)}) # パスカルの三角形を10段表示

def fib(a,b,n)
  if n==0 then
    return a
  elsif n==1 then
    return b
  else
    return fib(a,b,n-2) + fib(a,b,n-1)
  end
end

print((0..9).to_a.map{|v| fib(0,1,v)}) # フィボナッチ数を10個表示
print((0..9).to_a.map{|v| fib(2,1,v)}) # リュカ数を10個表示

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
