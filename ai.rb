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