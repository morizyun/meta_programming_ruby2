module MyModule
  def my_method; 'good evening'; end
end

class MyClass
  class << self
    include MyModule
  end
end

puts MyClass.my_method #=> "good evening"