module Actor
  class Human
    def initialize(message = 'nothing')
      @message = message
    end
    def show_message
      @message
    end
    def show_message_length
      @message.length
    end
  end
end
