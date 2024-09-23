daylight = [true, false].sample

def time_of_day(daylight)
  announcement = daylight ? "It's daytime!" : "It's nighttime!"
  puts announcement
end

time_of_day(daylight)

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
