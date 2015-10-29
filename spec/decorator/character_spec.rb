# coding: utf-8
require "decorator/character"
describe Decorator::Character do
  before do
    actor = double('Actor')
    # updateメソッドが呼びだせるようにする
    allow(actor).to receive(:show_message).and_return('I am actor')
    allow(actor).to receive(:show_message_length).and_return(10)
    allow(actor).to receive(:class).and_return(Actor)

    @decorator = Decorator::Character.new actor
    # twitter_clientメソッドが呼ばれたら上で作ったモックを返すように実装を書き換える
    allow(@decorator).to receive(:actor).and_return(actor)
  end
  it 'show_message return actor_class_name + actor_message' do
    expect(@decorator.show_message).to eq "Actor: I am actor"
  end
  it 'show_message_length return message.length + class.to_s.length' do
    expect(@decorator.show_message_length).to eq 17
  end
end
