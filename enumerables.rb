require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
# def get_names(spicy_foods)
#   spicy_foods.each do |k,v|
#    return v == [:name]
# end

# get_names(spicy_foods)

def get_names(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
  end
end

# puts get_names(spicy_foods)


# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5

# psuedo 
# create a condition if heat_level >= 5
# push this into a new array or hash (?) -- sort method maybe
# puts the new hash 
def spiciest_foods(spicy_foods)
  spicy_foods.map do |heat|
    heat_value = heat[:heat_level]
    if heat_value >= 5
      heat
    end
  end.compact
end

puts spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  #map through spicy-food
   spicy_foods.map do |foods|
    "#{foods[:name]} (#{foods[:cuisine]}) | Heat Level:#{'🌶' * foods[:heat_level]}"
  end.join(" ")
end

puts print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
#  computer generates a string representing the food
# take in that string, iterate throught the cuisines, check to see which cuisine matches the cuisine being passed in 
# return a single hash 
 spicy_foods.each do |food|
    if cuisine == food[:cuisine]
     return food
    end
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
# def sort_by_heat(spicy_foods)
#   spicy_foods[:heat_level].map.sort 
# end 

def sort_by_heat(spicy_foods)
  spicy_foods.map.sort_by do |food| 
    food[:heat_level]
  end
end
  
puts sort_by_heat(spicy_foods)
# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
end



