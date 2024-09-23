stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
when 'red'
  puts 'Stop!'
end

# Convert the following case statement to an if statement.
=begin
  At the risk of seeming immature, I don't want to do that.
  Instead I did something more interesting. I don't know if it's good.
  I'm not trying to show off. I'm just finding my own path to engaging
  with the exercise and stepping into unfamiliar territory.
=end 

class Stoplight
  def self.green
    puts "Go!"
  end

  def self.yellow
    puts "Slow down!"
  end

  def self.red
    puts "Stop!"
  end
end

Stoplight.send(stoplight.to_sym)

class StoplightFactory
  def initialize(stoplight_color)
    klass_for(stoplight_color).new.alert
  end

  def klass_for(stoplight_color)
    case stoplight_color
    when 'green'
      GreenStoplight
    when 'yellow'
      YellowStoplight
    when 'red'
      RedStoplight
    else
      NullStoplight
    end
  end

  class GreenStoplight
    def alert
      puts "Go!"
    end
  end

  class YellowStoplight
    def alert
      puts "Slow down!"
    end
  end

  class RedStoplight
    def alert
      puts "Stop!"
    end
  end

  class NullStoplight
    def alert
      puts "This is an unknown stoplight color"
    end
  end
end

StoplightFactory.new(stoplight)

status = ['awake', 'tired'].sample
message = (status == 'awake') ? 'Be productive!' : 'Go to sleep!'
puts message

case stoplight
when 'green'  then  puts "Go!"
when 'yellow' then  puts "Slow down!"
when 'red'    then  puts 'Stop!'
else                puts "This is an unknown stoplight color"
end