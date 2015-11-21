def setup(&block)
  @setups << block
end
def event(description, &block)
  @events << { description: description, condition: block }
end

@setups = []
@events = []
load '4.6.event.rb'

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end
  puts "ALERT: #{event[:description]}" if event[:condition].call
end

#=> 空の高さを設定
#=> 山の高さを設定
#=> ALERT: 空が落ちてくる
#=> 空の高さを設定
#=> 山の高さを設定
#=> ALERT: 空が近づいている
#=> 空の高さを設定
#=> 山の高さを設定