# Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |elm| puts elm }

# Same as above, but only print out values greater than 5.
arr.select { |elm| elm > 5 }.each { |elm| puts elm }
arr.each { |elm| puts elm if elm > 5 }

# Now, using the same array from #2, use the select method to extract all 
# odd numbers into a new array.
odds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |elm| elm.odd? }

# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push(11).unshift(0)
p arr

# Get rid of 11. And append a 3.
arr.delete(11) # returns 11, so it can't be chained in this order
arr.push(3)

=begin
What's the major difference between an Array and a Hash?
- a hash contains key-value pairs, which can be useful for categorized data
- on the other hand, an array is a guaranteed fixed-order list
- also, arrays are accessed by index, while hashes are accessed by key,
- although both can be searched by value.
=end
# Create a Hash, with one key-value pair, using both Ruby syntax styles
h1 = {a: 1}
h2 = {:a => 1}
# bonus
h3 = Hash.new()
h3[:a] = 1


# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
h[:b]

# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5         # or, alternatively:
h.merge!({e: 5})  # but don't do both (at least not in this order)

# 3. Remove all key:value pairs whose value is less than 3.5
h.select { |_key, value| value < 3.5}.each_key {|key| h.delete(key)}
h.delete_if { |_key, value| value < 3.5 }

# Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes.  The below are uncommented for easier reading, and because they do not
# throw any exceptions when they are evaluated.
{a: [1, 2, 3]}          or {a: arr}
[{a: 1}, {b: 2, c: 3}]  or [h1, h2, h3]

=begin
Given the following data structures, write a program that copies the information 
from the array into the empty hash that applies to the correct person.
Expected output:
{
  "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
  "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
}
=end
contact_data =  [
                  ["joe@email.com", "123 Main st.", "555-123-4567"],
                  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
                ]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

details_hash = {}
contact_data.each do |data|
  identifier = data.first.split('@').first
  details_hash[identifier] ||= {}
  details_hash[identifier][:email]   = data[0]
  details_hash[identifier][:address] = data[1]
  details_hash[identifier][:phone]   = data[2]
end

contacts.each do |full_name, contact_details|
  details_hash.each do |name, details|
    contact_details.merge!(details) if full_name.downcase.include?(name.downcase)
  end
end
p contacts
# Using the hash you created from the previous exercise, demonstrate how 
# you would access Joe's email and Sally's phone number.
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# Use Ruby's Array method delete_if and String method start_with? to delete 
# all of the strings that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |elm| elm.start_with?('s')}
p arr

# Then recreate the arr and get rid of all of the strings that start with "s" or "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |elm| ['s','w'].include?(elm[0])}
p arr
# Take the following array and turn it into a new array that consists of 
# strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. 

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
singles = a.map { |elm| elm.split(' ')}.flatten
p singles

#What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# => "These hashes are the same!"
# This is because the keys and values are identical. Order is irrelevant.
# But this raises the question of *where* the information for the key ordering
# is stored, since the triple eqaulity also returns true
puts hash1.object_id
puts hash2.object_id

# aha! so triple equals (===) doesn't check that it's the same object, but rather
# checks if the object has the same properties/values?  that was unexpected
# https://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and
# okay, so it looks like == *does* check if the objects are the same object, but the
# Hash class overrides this behavior to check merely if the hashes would respond in the same
# way.  From an OOP perspective, that's useful since the behavior of hash1 and hash2 are
# identical in most cases outside of ".object_id" and where order of the entries matters.

puts hash1 == hash2     # => true
puts hash1 === hash2    # => true
puts hash1.eql? hash2   # => true
puts hash1.equal? hash2 # => false
# this is because the ".equal?" method hasn't been overridden by the Hash class, so it 
# maintains the original behavior of "==" described above.

=begin
Challenge: In exercise 11, we manually set the contacts hash values one 
by one. Now, programmatically loop or iterate over the contacts hash 
from exercise 11, and populate the associated data from the contact_data 
array. Hint: you will probably need to iterate over 
([:email, :address, :phone]), and some helpful methods might be the
 Array shift and first methods.

 As a bonus, see if you can figure out how to make it work with 
 multiple entries in the contacts hash.
=end

# perhaps my solution already does something like this?
