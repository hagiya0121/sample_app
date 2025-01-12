n = gets.to_i
a = gets.chomp.split.map(&:to_i)

count = 0

(1...n).each do |i|
  # 条件: a[j] <= a[i] / 2 を満たす最も大きい j を探す
  target = a[i] / 2.0
  index = a[0...i].bsearch_index { |x| x > target }

  # 条件を満たす数は、index が nil でなければ `index` 個
  count += index || i
end

puts count

