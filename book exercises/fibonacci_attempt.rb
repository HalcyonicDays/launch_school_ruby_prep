# This method is problematic because this isn't actually recursion, 
# but more like a while loop hidden inside a recurring method call
def fibonacci_upto(max, n=0, current=1, previous=0)
  n = current + previous
  previous = current
  current = n
  fibonacci_upto(max, n, current, previous) if n < max
  puts n if n >= max
end

[3, 10, 30, 80].each do |max|
  fibonacci_upto(max)
end

final_digit = 8
n = 1
current = 1
previous = 0

(final_digit-1).times do |num|
  n = current + previous
  previous = current
  current = n
end

puts "the #{final_digit}th digit in the fibonacci sequence is #{n}"
# => "the 8th digit in the fibonacci sequence is 21"
# of course there are issues with "th" such as "1th", "2th", "3th",
# but these are outside the scope of this exercise

def countdown(n)
  puts n
  countdown(n-1) if n > 0
end

countdown(10)
countdown(-3)


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
p family.select {|key, _val| [:brothers, :sisters].include?(key)}.values.flatten

