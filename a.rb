puts "数字を入力してください"
input = gets 
num = input.to_i

# 数値が3と5で割り切れる場合
if num%15 == 0
  puts '結果は..'
  puts '3と5で割り切れる'
elsif num%3 == 0
  puts '結果は..'
  puts '3で割り切れる'
elsif num%5 == 0
  puts '結果は..'
  puts '5で割り切れる'
else 
  puts '結果は..'
  puts num
end