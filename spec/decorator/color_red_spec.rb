# coding: utf-8
require "spec_helper"
require "decorator/color_red"

describe Decorator::ColorRed do
  before do
    actor = double('Actor')
    # updateメソッドが呼びだせるようにする
    allow(actor).to receive(:show_message).and_return('I am actor')
    allow(actor).to receive(:show_message_length).and_return(10)

    @decorator = Decorator::ColorRed.new actor
  end
  it 'show_message return red color text' do
    expect(@decorator.show_message).to eq "\e[31mI am actor\e[m"
  end
  it 'show_message_length return message.length + class.to_s.length - 10' do
    expect(@decorator.show_message_length).to eq 'I am actor'.length
  end

end
