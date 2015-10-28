require "./lib/actor/human"
require "./lib/decorator/character"


actor = Actor::Human.new 'My name is Hoge Hoge'
decorator = Decorator::Character.new actor
puts decorator.show_message
