require 'oystercard'

describe Oystercard do

  it 'get_balance' do
    oystercard = Oystercard.new
    expect(oystercard.get_balance).to eq 0
  end


  describe '#top_up' do

    it 'raises an error if the balance exceeds 90' do
      expect{ subject.top_up(91) }.to raise_error 'Balance cannot exceed 90'
    end


    it {is_expected.to respond_to(:top_up).with(1).argument}

    it 'can top up the balance' do
      expect{ subject.top_up 1 }.to change{ subject.get_balance}.by 1
    end

  end

end
