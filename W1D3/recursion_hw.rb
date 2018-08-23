require 'byebug'

# Exercise 1 - sum_to
# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to
#n (inclusive of n).
#
#   # Test Cases
#   sum_to(5)  # => returns 15
#   sum_to(1)  # => returns 1
#   sum_to(9)  # => returns 45
#   sum_to(-8)  # => returns nil

def sum_to(n)
  return nil if n < 0
  return n if n == 1
  n + sum_to(n - 1)
end

# Exercise 2 - add_numbers
# Write a function add_numbers(nums_array) that takes in an array of Fixnums and
# returns the sum of those numbers. Write this method recursively.
#
#   # Test Cases
#   add_numbers([1,2,3,4]) # => returns 10
#   add_numbers([3]) # => returns 3
#   add_numbers([-80,34,7]) # => returns -39
#   add_numbers([]) # => returns nil

def add_numbers(nums_array)
  return nums_array.first if nums_array.length <= 1
  nums_array.first + add_numbers(nums_array[1..-1])
end

=begin
Exercise 3 - Gamma Function
Let's write a method that will solve Gamma Function recursively.
The Gamma Function is defined Γ(n) = (n-1)!.

  # Test Cases
  gamma_fnc(0)  # => returns nil
  gamma_fnc(1)  # => returns 1
  gamma_fnc(4)  # => returns 6
  gamma_fnc(8)  # => returns 5040
=end

def gamma_fnc(n)
  return nil if n == 0
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

=begin
Exercise 4 - Ice Cream Shop
Write a function ice_cream_shop(flavors, favorite) that takes in an array of
ice cream flavors available at the ice cream shop, as well as the user's
favorite ice cream flavor. Recursively find out whether or not the shop offers
their favorite flavor.

Test Cases
ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')
# => returns true
ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender',
'sea salt caramel'], 'pistachio')  # => returns false
ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
ice_cream_shop([], 'honey lavender')  # => returns false
=end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return flavors.first == favorite if flavors.length == 1
  return true if flavors.first == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

=begin
Write a function reverse(string) that takes in a string and returns it reversed.

  # Test Cases
  reverse("house") # => "esuoh"
  reverse("dog") # => "god"
  reverse("atom") # => "mota"
  reverse("q") # => "q"
  reverse("id") # => "di"
  reverse("") # => ""
=end

def reverse(string)
  return '' if string.length == 0
  return string[0] if string.length == 1
  string[1.. -1] + string[0]
end
