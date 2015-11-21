require 'highline'

hl = HighLine.new
friends = hl.ask('友達を入力してください', lambda { |s| s.split(',') })
puts "友達一覧：#{friends.inspect}"

# => 友達を入力してください
# <= hoge,fuga
# => 友達一覧：["hoge", "fuga"]