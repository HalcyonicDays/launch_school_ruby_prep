def selective_caps(str)
  str.size > 10 ? str.upcase : str
end

puts selective_caps("Joe Smith")
puts selective_caps("Joe Robertson")

def selective_range(int)
  case
  when int.between?(0,50)
    return "between 0 and 50"
  when int.between?(51,100)
    "between 51 and 100"
  when int > 100
    "greater than 100"
  else
    "number is outside of range"
  end
end

puts "Please enter a number between 0 and 100."
# number = gets.chomp.to_i
# puts selective_range(number)
numbers = [0, 15, 50, 51, 80, 100, 150, -5]
numbers.each { |number| puts selective_range(number) }
