require "spec_helper"
require "actor/human"

describe Actor::Human do
  before do
    @human =  Actor::Human.new('human')
  end
  it 'show_message return human' do
    expect(@human.show_message).to eq 'human'
  end
  it 'show_message_length retur 5' do
    expect(@human.show_message_length)
  end
end
