module M2
  def self.prepended(othermod)
    puts "#{self} は #{othermod} にprependされたよ！"
  end
end

class C
  prepend M2
end

#=> M2 は C にprependされたよ！