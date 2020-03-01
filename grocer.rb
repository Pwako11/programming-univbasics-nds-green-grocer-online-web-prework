require 'pry'

def find_item_by_name_in_collection(name, collection)
  index = 0 
  
  while index < collection.length do 
    item = collection[index]
    
    if item[:item] == name
      return item  
    end 
    index += 1 
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_array = []
  index = 0 
  
  while index < cart.length do 
    new_array_item = find_item_by_name_in_collection
    
    index += 1 
  end 
  new_array
  binding.pry
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
