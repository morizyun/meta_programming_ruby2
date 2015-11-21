inc = Proc.new { |x| x + 1 }
puts inc.call(2) # => 3

# lambdaの別記法
inc2 = ->(x) { x - 1 }
puts inc2.call(2) #=> 1