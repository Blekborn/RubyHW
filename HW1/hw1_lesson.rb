# https://gist.github.com/MaksGostroushko/25f7fe9c2a99b47dae0c81569e36f319


# 1 An integer array is given. It is necessary to display first its elements with even indices, and then - with odd ones.
number_two = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number_two.partition { |k| number_two.index(k) % 2 == 0 }
p "---------------"
# 2 An integer array is given. It is necessary to display first its elements with odd indices, and then - evenи.
number_one = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number_one.partition { |k| number_two.index(k) % 2 == 1 }
p "---------------"
# 9 An integer array is given. Replace all positive elements with the minimum value.
minarr = [-3, -4, 23, 4, 2, 3, 5]
p minarr.map! { |is| is > 0 ? minarr.min : is }
p "---------------"
# 10 An integer array is given. Replace all positive elements with the maximum value.
maxarr = [-3, -4, 23, 4, 2, 3, 5]
p maxarr.map! { |iu| iu > 0 ? maxarr.max : iu }
p "---------------"
# 11 An integer array is given. Replace all negative elements with the minimum value.
miarr = [-3, -4, 23, 4, 2, 3, 5]
p miarr.map! { |mi| mi < 0 ? miarr.min : mi }
p "---------------"
# 12 An integer array is given. Replace all negative elements with the maximum value.
maarr = [-3, -4, 23, 4, 2, 3, 5]
p maarr.map! { |ma| ma < 0 ? maarr.max : ma }
p "---------------"
# 13 An integer array is given. Cyclic shift of array elements to the left by one position.
d = [2, 3, 4, 2, 5, 3]
p d.rotate(1)
p "---------------"
# 14 An integer array is given. Cyclic shift of array elements to the right by one position.
ds = [2, 3, 4, 2, 5, 3]
p ds.rotate(-1)
p "---------------"
# 17 An integer array is given. Find the number of its local maxima.
m = [1, 2, 3, 2, 3, 4, 2, 4, 6, 7]
p((1..m.size - 2).to_a.select { |i| (m[i] > m[i - 1]) && (m[i] > m[i + 1]) }.size)
p "---------------"
# 18 An integer array is given. Find the number of its local minima.
mq = [1, 2, 3, 2, 3, 4, 2, 4, 6, 7]
p((1..mq.size - 2).to_a.select { |iq| (mq[iq] > mq[iq - 1]) && (mq[iq] < mq[iq + 1]) }.size)
p "---------------"
# 25 An integer array is given. Transform it by inserting a zero element in front of each positive element.
ys = [25, 24, 23, -1]
ys.each do |ffg|
  if ffg > 0
    puts ffg.to_s.rjust(3, "0")
  end
end
p "---------------"
# 26 An integer array is given. Transform it by inserting a zero element in front of each negative element.
ysw = [25, 24, 23, -1]
ysw.each do |ffgw|
  if ffgw < 0
    puts ffgw.abs.to_s.rjust(3, "-0")
  end
end
p "---------------"
# 27 An integer array is given. Transform it by inserting a zero element after each positive element.
yw = [25, 24, 23, -1]
yw.each do |fgw|
  if fgw > 0
    puts fgw.to_s.ljust(3, "0")
  end
end
p "---------------"
# 28 An integer array is given. Transform it by inserting a zero element after each negative element.
yaw = [25, 24, 23, -1]
yaw.each do |agw|
  if agw < 0
    puts agw.to_s.ljust(3, "0")
  end
end
p "---------------"
# 29 An integer array is given. Sort it in ascending order.
a = [1, 7, 6, 5, 4, 3, 2, 1]
p a.sort
p "---------------"
# 30 An integer array is given. Sort it in descending order.
ab = [1, 7, 6, 5, 4, 3, 2, 1]
p ab.sort.reverse
p "---------------"
# 31 An integer array is given. Print array indices in the order in which their corresponding
# the elements form a descending sequence.
arraym = [3, 2, 1, 7, 5, 6, 4, 8, 9]
p (0...arraym.size).sort_by { |i| arraym[i] }.reverse
p "---------------"
# 32 An integer array is given. Print array indices in the order in which their corresponding elements
# form an ascending sequence.
arrayms = [3, 2, 1, 7, 5, 6, 4, 8, 9]
p (0...arrayms.size).sort_by { |is| arrayms[is] }.select.to_a
p "---------------"
# 33 An integer array is given. Find the index of the minimum element.
arrayminnel = [4, 2, 9, 3, 5, 1, 1, 6, 4]
p arrayminnel.each_with_index.min.to_s
p "---------------"
# 34 An integer array is given. Find the index of the maximum element.
arraymaxnel = [4, 2, 9, 3, 5, 1, 6, 4]
p arraymaxnel.each_with_index.max.to_s
p "---------------"
# 35 An integer array is given. Find the index of the first minimum element.
arrayminnels = [4, 2, 9, 3, 5, 1, 1, 1, 6, 4]
p arrayminnels.each_with_index.min.to_s
p "---------------"
# 38 An integer array is given. Find the index of the last maximum element.
arraymaxxnel = [4, 2, 9, 9, 9, 3, 5, 1, 6, 4]
p arraymaxxnel.each_with_index.max.to_s
p "---------------"
# 39 An integer array is given. Find the number of minimum elements.
arts = [1, 1, 2, 2, 5, 4, 5, 2, 1]
val_mn = arts.min
resl = arts.each_with_index.each_with_object([]) do |(qq, aa), zz|
  zz << aa if (qq == val_mn)
end
p resl.size
p "---------------"
# 40 An integer array is given. Find the number of maximum elements.
sss = [33, 45, 23, 45, 10]
val_mx = sss.max
res = sss.each_with_index.each_with_object([]) do |(q, i), p|
  p << i if (q == val_mx)
end
p res.size
p "---------------"
# 41 An integer array is given. Find the smallest even element.
arrayfour = [1, 3, 4, 5, 6, 7, 8, 10]
p arrayfour.select { |cv| cv % 2 == 0 }.min
p "---------------"
# 42 An integer array is given. Find the smallest odd element.
arraymin = [3, 5, 7, 2, 4, 3, 9]
p arraymin.select { |cs| cs % 2 == 1 }.min
p "---------------"
# 43 An integer array is given. Find the maximum even element.
arraymax = [3, 5, 7, 2, 4, 3, 9]
p arraymax.select { |csz| csz % 2 == 0 }.max
p "---------------"
# 44 An integer array is given. Find the maximum odd element.
arraymaxx = [3, 5, 7, 2, 4, 3, 9]
p arraymaxx.select { |csa| csa % 2 == 1 }.max
p "---------------"
# 45 An integer array is given. Find the minimum positive element.
arrayminel = [-1, 5, -6, 2, -4, 3]
p arrayminel.select { |es| es >= 0 }.min
p "---------------"
# 46 An integer array is given. Find the maximum negative element.
arraymaxel = [-1, 5, -6, 2, -4, 3]
p arraymaxel.select { |et| et < 0 }.min
p "---------------"
# 47 Given an integer array and an interval a..b. Find the smallest element in this interval.
arraymas = [24, 5, 6, 7, 83, 4, 54, 6, 3]
ab = (2..6)
p arraymas[ab].min
p "---------------"
# 48 Given an integer array and an interval a..b. Find the maximum of the elements in this interval
arraymass = [24, 5, 6, 7, 83, 4, 54, 6, 3]
ba = (2..6)
p arraymass[ba].max
p "---------------"
# 61 An integer array is given. Find the two largest elements.
num_max = [3, 4, 2, 5, 6, 4]
p num_max.max(2)
p "---------------"
# 62 An integer array is given. Find the two smallest elements.
num_min = [3, 4, 2, 5, 6, 4]
p num_min.min(2)
p "---------------"
# 65 An integer array is given. First, output all its even elements, and then - odd ones.
even_or_odd = [4, 8, 6, 7, 4, 9, 8]
p even_or_odd.partition { |v| v.even? }
p "---------------"
# 66 An integer array is given. First, output all its odd elements, and then - even ones.
odd_or_even = [4, 8, 6, 7, 4, 9, 8]
p odd_or_even.partition { |w| w.odd? }
p "---------------"
# 77 An integer is given. Find the sum of its digits.
numbers = 1234
p numbers.digits.sum
p "---------------"
# 78 An integer is given. Find the product of its numbers.
numberrs = 1234
p numberrs.digits.inject(:*)
p "---------------"
# 79 An integer array is given. Square the negative and the positive to the third power.
# Zero elements - do not change.
aray = [-3, -5, -2, 3, 4, 0, 7, 4, 0]
aray.each do |mn|
  if mn > 0
    p mn ** 3
  elsif mn < 0
    p mn ** 2
  else
    p mn
  end
end
p "---------------"
# 80 Given the range a..b. Get an array of numbers located in this range (excluding these numbers themselves),
#  in ascending order, as well as the size of this array.
mss = [1, 2, 2, 6, 4, 3, 5]
abv = (2..5)
p mss.sort & abv.to_a
p "---------------"
# 81 Given the range a..b. Get an array of numbers located in this range (excluding these numbers themselves),
# in descending order, as well as the size of this array.
ms = [1, 2, 2, 6, 4, 3, 5]
ac = (2..5)
p ms.sort.reverse & ac.to_a
p "---------------"
# 82 Given a number A and a natural number N. Find the result of the following expression 1 + A + A * 2 + A * 3 +… + A * N.
A, N = 10, 12
p(0..N).map { |x| x * A }.inject(1) { |x, y| x + y }
p "---------------"
# 83 Given a number A and a natural number N. Find the result of the following expression 1 - A + A * 2 - A * 3 + ... + ((-1) ** N) * A * N.
C, B = 5, 7
diapazon = 4..B
p diapazon.inject(1 + C + C * 2 - C * 3) { |sums, i| sums + ((-1) ** i) * C * i }
p "---------------"
# 86 An integer array is given. Find the arithmetic mean of its elements.
arry = [1, 3, 5, 7, 9, 2, 4, 6]
p arry.sum(0.0) / arry.size
p "---------------"
# 87 An integer array is given. Find all even items.
arry = [2, 4, 5, 3, 7, 4, 5, 3]
arry.each do |df|
  if df % 2 == 0
    p df
  end
end
p "---------------"
# 88 An integer array is given. Find the number of even elements.
arr = [24, 3, 5, 4, 57, 56, 8]
p arr.count { |cx| cx % 2 == 0 }.to_s
p "---------------"
# 89 An integer array is given. Find all odd items
arrys = [2, 4, 5, 3, 7, 4, 5, 3]
arrys.each do |dfs|
  if dfs % 2 == 1
    p dfs
  end
end
p "---------------"
# 90 An integer array is given. Find the number of odd items.
arre = [24, 3, 5, 4, 57, 56, 8]
p arre.count { |cxc| cxc % 2 == 1 }.to_s
p "---------------"
# 91 Given an integer array and number K. If there is an element less than K, then output true; otherwise, output false.
kray = [1, 2, 3, 4, 2, 4, 3]
kk = 1
p kray.any? { |er| er < kk }
p "---------------"
# 92 Given an integer array and number K. If there is an element greater than K, output true; otherwise, output false.
kra = [0, 2, 3, 4, 2, 4, 3]
ka = 1
p kra.any? { |er| er > ka }
p "---------------"
# 93 Given an integer array and a number K. If all elements of the array are less than K, then output true; otherwise, output false.
krall = [0, 2, 3, 4, 2, 4, 3]
kall = 5
p krall.all? { |er| er < kall }
p "---------------"
# 94 An integer array and a number K are given. If all elements of the array are greater than K, then output true; otherwise, output false.
kral = [1, 2, 3, 4, 2, 4, 3]
kal = 5
p kral.all? { |er| er > kal }
p "---------------"