class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_exec do
  puts self #=> <MyClass:0x007ff9f89dcde0>
  puts @v #=> 1
end