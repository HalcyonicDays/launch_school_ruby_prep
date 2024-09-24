def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

puts add(
    subtract(80, 10), 
    multiply(
      subtract(20, 6), 
      add(30, 5)
      )
    )

class ChainableInt
  attr_accessor :result

  def initialize(num=nil)
    @result = num.to_i
  end

  def to_s
    result.to_i
  end

  def self.add(num)
    ChainableInt.new(self.result += num)
  end

  def self.subtract(num)
    ChainableInt.new(self.result -= num)
  end

  def self.multiply(num)
    ChainableInt.new(self.result *= num)
  end

  def add(num)
    ChainableInt.new(self.result += num)
  end

  def subtract(num)
    ChainableInt.new(self.result -= num)
  end

  def multiply(num)
    ChainableInt.new(self.result *= num)
  end
end

# puts ChainableInt.new(20).subtract(6).multiply(ChainableInt.new(30).add(5))
# This was an interesting exercise, but not the best way to spend my time at the moment.
# I doubt I'll return to it, but let it be know this Class does not behave as intended
# and is not currently useable.

