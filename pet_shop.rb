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

# Test 11 -- Optional Homework
def customer_can_afford_pet(customer, new_pet)
  return customer[:cash] < new_pet[:price] ? (false) : (true)
  # if customer[:cash] < new_pet[:price]
  #   return false
  # else
  #   return true
  # end
end

def  sell_pet_to_customer(pet_shop, new_pet, customer)
  # Check if pet exists
  if new_pet == nil
    # Pets is not found
    return # exit the function - no point in proceeding
  else
    # Pet does exist
    if customer_can_afford_pet(customer, new_pet) == true 
      # Customer can afford the pet
      # Add pet to customer data
      add_pet_to_customer(customer, new_pet)
      #Remove the pet from the petshop stock
      remove_pet_by_name(pet_shop,new_pet[:name])
      #Add the price of the pet to the total of the petshop
      add_or_remove_cash(pet_shop,new_pet[:price])
      # Adjust number of pets sold
      pet_shop[:admin][:pets_sold] =+ 1
      # Remove the price of the pet from the customers funds
      customer[:cash] =- new_pet[:price]
      return # exit the function - no point in proceeding
    else
      # Customer cannot afford the pet
      return # exit the function - no point in proceeding
    end
  end
end

