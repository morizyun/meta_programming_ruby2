class String
  def self.inherited(subclass)
    puts "#{self} は #{subclass} に継承されたよ！"
  end
end

class MyString < String; end
#=> "String は、MyString に継承されたよ！"