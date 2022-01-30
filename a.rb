SET = ["apple", "google", "amazon"]

cnt = 0
len = 3

while cnt < (1 << len)
  bit = cnt.to_s(2).rjust(len,'0').split("").map(&:to_i)

  sample = []
  SET.zip(bit).each do |test|
    item,b = test.first,test.last
    # bitが1だったら処理
    if b==1 
      sample << item
    end
  end

array = [] 
sample(array)
p array
  cnt+=1
end
