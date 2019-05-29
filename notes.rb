# Write a function which will take an array 
# of numbers and find the second lowest and 
# second greatest numbers, respectively.

# Sample array : [1,2,3,4,5]
# Expected Output : 2,4

# Tyson Process
array = [2, 4, 7, 1, -5, 100, 10]

puts array.sort[2] # Orders array, then prints second number
puts array.sort[-2] # Orders then prints second to last number

# Kristoffer Process
def secondLowestAndHighest(array)
  array = array.sort
 
  second_smallest = array[1]
  second_highest = array[array.length-2]
 
  puts " #{second_smallest}, #{second_highest}"
 end





# A Solution

tester = [11,3,99,6,12,137,1,2,5]

def sec_greatest_lowest(arr)
     puts("#{arr.sort[1]}, #{arr.sort[-2]}")
end





#Associations

belongs_to
has_many    one to many
has_one     one to one

dependant

has_many_through   many to many

has_one_through
has_and_belongs_to_many
inverse_of     bidirectional









class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end

class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
  # has_many :physicians, :through => :appointments
end
      # physician_patient
class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end




# Main Objective:

#   - has_many_through
#   - seed, Generating fake data.