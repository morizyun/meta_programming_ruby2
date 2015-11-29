user_input = "User input: #{gets()}"
puts "user_input.tainted? => #{ user_input.tainted? }"

only_code_object = 1
puts "only_code_object.tainted? => #{ only_code_object.tainted? }"

# ruby 6.2.4.tainted_code.rb
# 1
# user_input.tainted? => true
# only_code_object.tainted? => false