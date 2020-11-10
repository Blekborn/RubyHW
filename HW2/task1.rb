array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202,
         574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
numbers = array
p "узнать количество элементов в массиве"
p numbers.size
p "перевернуть массив"
p numbers.reverse
p "найти наибольшее число"
p numbers.max
p "найти наименьшее число"
p numbers.min
p "отсортировать от меньшего к большему"
p numbers.sort
p "отсортировать от большего к меньшему"
p numbers.sort.reverse
p "удалить все нечетные числа"
p numbers.delete_if { |s| s % 2 == 1 }
p "оставить только те числа, которые без остатка делятся на 3"
p numbers.find_all { |el| el % 3 == 0 }
p "удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)"
p numbers.find_all { |e| numbers.count(e) > 0 }
p "разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого"
p numbers.map { |x| x.to_f / 10 }
p "получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве"
new_mass = ('a'..'z').to_a
mass_abc = Array.new()
(0..numbers.size - 1).each do |u|
  (0..new_mass.size - 1).each do |y|
    if numbers[u] == y
      p mass_abc << new_mass[y]
    end
  end
end
p "поменять местами минимальный и максимальный элементы массива"
i = numbers.each_with_index.min[1]
j = numbers.each_with_index.max[1]
numbers[i], numbers[j] = numbers[j], numbers[i]
p numbers
p "найти элементы, которые находятся перед минимальным числом в массиве"
q = 0
min = numbers.min
while numbers[q] != min
  el = numbers[q]
  q += 1
  p el
end
p "необходимо найти три наименьших элемента"
p numbers.min(3)
p "-------------"