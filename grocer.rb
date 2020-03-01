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
  new_array = []
  index = 0 
  
  while index < cart.length do 
    new_array_item = find_item_by_name_in_collection(cart[index][:item], new_array)
    if new_array_item
      new_array_item[:count] += 1 
    else 
      new_array_item = {
        :item => cart[index][:item], 
        :price => cart[index][:price],
        :clearance => cart[index][:clearance], 
        :count => 1 
      }
      new_array << new_array_item
    end 
    index += 1 
  end 
  new_array
  #binding.pry
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  index = 0 
  
  while index < coupons.length do 
    
    cart_item = find_item_by_name_in_collection(coupons[index][:item], cart)
    couponed_item_name = "#{coupons[index][item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
    binding.pry
    
    if cart_item && cart_item[:count] >= coupons[index][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupon[index][:num]
        cart_item[:count] -= coupons[index][:num]
      else
        cart_item_with_coupon = {
          :item => couponed_item_name, 
          :price => coupons[index][:cost]/ coupons[index][:num],
          :count => coupons[index][:num],
          :clearance => cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[index][:num]
      end 
    end 
    index += 1 
  end
  cart
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
