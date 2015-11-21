def add_method_to(a_class)
  a_class.class_eval do
    def greet
      puts 'Hello'
    end
  end
end

add_method_to String

'bcd'.greet #=> Hello