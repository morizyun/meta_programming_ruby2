class MyClass
  @my_var = 1 # クラスインスタンス変数

  def self.read
    @my_var # クラスインスタンス変数
  end

  def write(arg_num)
    @my_var = (arg_num) # インスタンス変数
  end

  def read
    @my_var # インスタンス変数
  end
end

obj = MyClass.new
puts obj.read     #=> nil
puts obj.write(3) #=> 3
puts obj.read     #=> 3
puts MyClass.read #=> 1