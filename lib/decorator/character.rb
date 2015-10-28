module Decorator
  class Character
    attr_reader :actor
    def initialize(actor)
      @actor = actor
    end
    def show_message
      @actor.class.to_s + separater + @actor.show_message
    end
    def show_message_length
      @actor.class.to_s.length + separater.length + @actor.show_message_length
    end
    private
    def separater
      ": "
    end
  end
end
