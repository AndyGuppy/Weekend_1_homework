#Homework -- Weekend 1 -- Andy Guppy

# Test 1 requires the pet shop name to be sent back 
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# Test 2 rquires the total cash which should be 1000
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# Test 3 -- call the total_cash function and add the value passed to it, tests looks for 1010 for add and 990 for remove
def add_or_remove_cash(pet_shop,cash)
  pet_shop[:admin][:total_cash] = (cash + total_cash(pet_shop))
  return total_cash(pet_shop)
end

# Test 4 -- details of the pets sold
def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end








