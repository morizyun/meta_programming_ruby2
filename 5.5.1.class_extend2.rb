module MyModule
  def my_method; 'good morning'; end
end

class MyClass
  extend MyModule
end

puts MyClass.my_method #=> "good morning"
