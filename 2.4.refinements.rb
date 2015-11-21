module StringExtensions
  refine String do
    def reverse
      'esrever'
    end
  end
end

module Strings
  using StringExtensions

  puts 'my_string'.reverse #=> esrever
end

puts 'my_string'.reverse #=> gnirts_ym