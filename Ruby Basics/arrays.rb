pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets.select { |pet| pet == 'fish' }.first
puts "I have a pet #{my_pet}!"

paired_array = []
['Dave', 7, 'Miranda', 3, 'Jason', 11].each_slice(2){ |elms| paired_array << elms}
p paired_array
p paired_array.flatten

array1 = [1, 5, 9]
array2 = [1, 9, 5].sort!

p array1 == array2
p array1 === array2
p array1.eql? array2
p array1.equal? array2
