car = {
  type:   'sedan',
  color:  'blue',
  mileage: 80_000
}.merge!(year: 2003)

car.delete(:mileage)

p car
puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} number is #{value}." }

half_numbers = numbers.map { |_key, value| value / 2}
p half_numbers

low_numbers = numbers.select! { |_key, value| value < 25}
p low_numbers
p numbers

vehicles = {
  "Car" => car,
  "Truck" => {
    type:   'pickup',
    color:  'red',
    year: 1998
  }
}

p vehicles
