array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202,
         574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
numbers = array
p "-------------"
p numbers.size
p "-------------"
p numbers.reverse
p "-------------"
p numbers.max
p "-------------"
p numbers.min
p "-------------"
p numbers.sort
p "-------------"
p numbers.sort.reverse
p "-------------"
p numbers.delete_if { |s| s % 2 == 1 }
p "-------------"
p numbers.find_all { |el| el % 3 == 0 }
p "-------------"
p numbers.find_all { |e| numbers.count(e) > 0 }
p "-------------"
p numbers.map { |x| x.to_f / 10 }
p "-------------"
new_mass = ('a'..'z').to_a
mass_abc = Array.new()
(0..numbers.size - 1).each do |i|
  (0..new_mass.size - 1).each do |y|
    if numbers[i] == y
      p mass_abc << new_mass[y]
    end
  end
end
p "-------------"

i = numbers.each_with_index.min[1]
j = numbers.each_with_index.max[1]
numbers[i], numbers[j] = numbers[j], numbers[i]
p numbers
p "-------------"
p numbers.min(3)
p "-------------"
