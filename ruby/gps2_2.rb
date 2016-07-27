#GPS 2.2
#Worked with Nan Min

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # "read the items" 
  # set default quantity
  # store the items 
  # print the list to the console "p" visualize without making it nil
# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a key and assign its value
# output: hash

# Method to remove an item from the list
# input: ask which item?
# steps: used built in delete method to delete the key
# output: hash

# Method to update the quantity of an item
# input: ask which key and update the value
# steps: within the assigned key update value
# output:hash

# Method to print a list and make it look pretty
# input: our wonderful hash
# steps: iterate through the hash
# output: all the key-value pairs.

def create_a_list(list)
  shopping_list = {}
  split_list = list.split(" ")
  split_list.each do |item, value|
  shopping_list[item] = 1
  end
  return shopping_list
end
    
def add_update_item(item, quantity, shopping_list)
  shopping_list[item] = quantity
end
  
def remove_item(item, shopping_list)
  shopping_list.delete(item)
end

def update_quantity(item, value, shopping_list)
  if error_check(item,value,shopping_list)
  shopping_list[item] = value
  end
end

def print_list(shopping_list)
  shopping_list.each do |item, value|
    puts "We are buying #{value} #{item}"
  end
end
  
def error_check(item, value, shopping_list)
  shopping_list.key?(item) ? true : false
end

#Driver Code
list = "Lemonade Tomatoes Onions Ice-Cream"
shopping_list = create_a_list(list)

# add_item("Lemonade", 3, shopping_list)

add_update_item("Lemonade", 2, shopping_list)
add_update_item("Tomatoes", 3, shopping_list)
add_update_item("Onions", 1, shopping_list)
add_update_item("Ice-Cream", 4, shopping_list)

remove_item("Lemonade", shopping_list)

update_quantity("Ice-Cream", 1, shopping_list)

print_list(shopping_list)

update_quantity("No-cream", 2, shopping_list)

p shopping_list

=begin
  
The pseudocode certainly helped a lot in creating the methods though I wouldn't quite use the format we were provided. We had to use a hash to store the values, but had to create the hash inside the initial list creation method. Because of that, we were uanble to use the hash for the methods that followed. When we had to pass the value for every method call. 

A method returns the evaluation of the code placed into it. Other methods can be passed to each other. In order to pass information between methods, we had to make sure to pass the hash used to create the initial list.

This challenge did push the fact that pseudocode makes the actual coding a lot easier. I'm still not completely comfortable with hashes and arrays yet, but I hope to solidify that knowledge through more practice.
  
end