

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