require "./lib/actor/human"
# require "./lib/decorator/character"
require "./lib/decorator/color_red"


actor = Actor::Human.new 'My name is Hoge Hoge'
# decorator = Decorator::Character.new actor
decorator = Decorator::ColorRed.new actor
puts decorator.show_message
