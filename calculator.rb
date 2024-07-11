require_relative 'operations'

# @param prompt [String]
# @return [Float]
def get_number(prompt)
  print prompt
  gets.chomp.to_f
end

def check_if_int(value)
  if value.is_a?(Numeric)
    value = value.to_i
    return value
  else "Invalid result"
  end 
end 
  
number_1 = get_number("Enter the first number: ")
number_2 = get_number("Enter the second number ")

print "Enter the operation: "

operation = gets.chomp

result = case operation
  when Operations::Enum::ADD
    number_1 + number_2
  when Operations::Enum::SUBSTRACK
    number_1 - number_2
else "Invalid operation"
end

validates_result = check_if_int(result)

puts "The result is: #{validates_result}"