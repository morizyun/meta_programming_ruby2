module M1
  def self.included(othermod)
    puts "#{self} は #{othermod} にincludeされたよ！"
  end
end

class C
  include M1
end

#=> M1 は C にincludeされたよ！