class C
  def public_method_no_self
    private_method
  end

  def public_method_with_self
    self.private_method
  end

  private

  def private_method
    'called private method'
  end
end

puts C.new.public_method_no_self #=> called private method

puts C.new.public_method_with_self #=> private method `private_method' called for #<C:0x007fdbe90574c8> (NoMethodError)
