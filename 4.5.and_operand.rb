def math(a, b)
  yield(a, b)
end

def do_math(a, b, &block)
  math(a, b, &block)
end

puts do_math(2, 3) { |x, y| x + y } #=> 5

# Procをブロックに戻す
def my_method(greeting)
  "#{greeting}, #{yield}!"
end

my_proc = proc { "Bill" }
puts my_method("Hello", &my_proc) #=> "Hello Bill!"