class C
  def initialize
    @x = 1
  end
end

class D
  def twisted_method
    @y = 2
    C.new.instance_eval { "@x : #{@x}, @y : #{@y}" }
  end
end

puts D.new.twisted_method #=> @x : 1, @y :

class E
  def twisted_method
    @y = 2
    C.new.instance_exec (@y) { |y| "@x : #{@x}, @y : #{y}" }
  end
end

puts E.new.twisted_method #=> @x : 1, @y : 2