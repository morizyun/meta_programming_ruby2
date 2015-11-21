def a_method
  return yield if block_given?
  'ブロックがありません'
end

puts a_method #=> ブロックがありません
puts a_method { 'ブロックがあります！' } #=> ブロックがあります！
