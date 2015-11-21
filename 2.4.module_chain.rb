module M1
  def my_method
    'M1#my_method()'
  end
end

module M2
  def my_method_second
    'M2#my_method_second()'
  end
end

class C
  include M1
  prepend M2
end

class D < C; end

# 継承関係を見るメソッド
puts D.ancestors.to_s # => [D, M2, C, M1, Object, Kernel, BasicObject]