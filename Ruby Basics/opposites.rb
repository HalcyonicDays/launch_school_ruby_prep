def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def valid_pairing?(number_1, number_2)
  number_1.to_i * number_2.to_i < 0
end

def get_non_zero_value()
  input = nil
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    break if valid_number?(input)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
  input.to_i
end

number_1 = nil
number_2 = nil

loop do
  number_1 = get_non_zero_value
  number_2 = get_non_zero_value
  
  break if valid_pairing?(number_1, number_2)
  
  puts ">> Sorry. One integer must be positive, one must be negative." 
  puts ">> Please start over."
end

puts "#{number_1} + #{number_2} = #{number_1 + number_2}"
