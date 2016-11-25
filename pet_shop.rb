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
  return pet_shop[:admin][:total_cash] +=cash
end

# Test 4 -- details of the pets sold
def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end

def stock_count(pet_shop)
    return pet_shop[:pets].count
end








