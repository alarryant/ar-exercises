require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


# 1. Add validations to two models to enforce the following business rules:


# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

puts "What is your store's name?"
@input_store = $stdin.gets.chomp

@new_store = Store.create(name: @input_store, annual_revenue: 2529889, mens_apparel: true, womens_apparel: false)
if @new_store.errors.any? # If there are errors, do something

  # You can iterate through all messages by attribute type and validation message
  # This will be something like:
  # attribute = 'name'
  # message = 'cannot be left blank'
  @new_store.errors.each do |attribute, message|
    # do stuff for each error
    puts message
  end
end

