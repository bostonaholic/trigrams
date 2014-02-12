require 'trigrams'
require 'rspec'

describe Trigrams do
  describe '#find' do
    it 'returns a list of 3 word phrases' do
      Trigrams.find('I wish I may').should be == ['I wish I', 'wish I may']
    end
  end
end
