my_ints = [5,6,7,8, 2, 1, 0, -1, -5]

# typical approach

def factorial(int)
  return 0 if int < 1 # mathematically incorrect, but this ensures the method
                      # only returns integers. nil, an error message, or an
                      # object of type Exception would also be valid options.
  product = 1
  int.downto(1){ |i| product*=i }
  product
end

my_ints.each { |int| puts factorial(int) }
