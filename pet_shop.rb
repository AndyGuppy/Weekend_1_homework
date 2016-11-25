#Homework -- Weekend 1 -- Andy Guppy

# Test 1 requires the pet shop name to be sent back 
def pet_shop_name(pet_shop)
return pet_shop[:name]
end

# Test 2 rquires the total cash which should be 1000
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# Test 3 -- call the total_cash function and add the value passed to it
def add_or_remove_cash(pet_shop,cash)
  pet_shop[:admin][:total_cash] = (cash + total_cash(pet_shop))
  return total_cash(pet_shop)

end