require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# ### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look
#  at this table's column structure, you'll find that it has a `store_id` (integer)
#   column. This is a column that identifies which store each employee belongs to.
#    It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how
#  you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani",
#   hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by
#    making multiple calls to create (like you have before.) No need to assign the employees
#     to variables though. Create them through the `@store#` instance variables that you
#      defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2`
#       (Richmond). Eg: `@store1.employees.create(...)`.

@store1.employee.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employee.create(first_name: "Joel", last_name: "Shinness", hourly_rate: 50)
@store1.employee.create(first_name: "Don", last_name: "Burks", hourly_rate: 40)
@store1.employee.create(first_name: "Karl", last_name: "Jensen", hourly_rate: 30)

@store2.employee.create(first_name: "Cristiane", last_name: "Silva", hourly_rate: 70)
@store2.employee.create(first_name: "Dani", last_name: "Tiemi", hourly_rate: 70)
@store2.employee.create(first_name: "Leo", last_name: "Ruan", hourly_rate: 70)
@store2.employee.create(first_name: "Sam", last_name: "Superman", hourly_rate: 70)
@store2.employee.create(first_name: "Giovani", last_name: "Vasconcelos", hourly_rate: 70)

