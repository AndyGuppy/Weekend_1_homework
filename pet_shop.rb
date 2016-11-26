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

# Test 4 -- stock count, expecting 6 pets to be found
def stock_count(pet_shop)
    return pet_shop[:pets].count
end

#Test 5 -- find all instance of a breed in the collection
def pets_by_breed(pet_shop,breed)
  breed_array = Array.new
  for pet in pet_shop[:pets]
    pet[:breed] == breed ? breed_array << pet[:breed] : false
  end
  return breed_array
end

# Test 6 -- find all pets by name
def find_pet_by_name(pet_shop,name)
  # name_hash = Hash.new
  for pet in pet_shop[:pets]
    if pet[:name] == name 
      return pet
    end
  end

  return nil
end

# Test 7 -- Remove a pet by name
def remove_pet_by_name(pet_shop,name)
  return pet_shop[:pets].delete_if { |h| h[:name] == name }
  # return
  # for pet in pet_shop[:pets]
  #   if pet[:name] == name
  #     return pet_shop[:pets].delete( pet )
  #   end
  # end
  # return nil
end

# Test 8 -- Add a pet to stock
def add_pet_to_stock(pet_shop,new_customer)
  pet_shop[:pets]<<new_customer
  return
end

# Test 9 -- count the customers pets
def customer_pet_count(customer)
  return customer[:pets].count
end

# Test 10 -- add a pet to a customer
def add_pet_to_customer(customer,new_pet)
  customer[:pets] << new_pet
  return
end





