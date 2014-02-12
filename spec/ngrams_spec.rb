require 'rspec'
require 'ngrams'

describe Ngrams do
  describe '#find' do
    it 'returns a list of 2 word phrases when passed size 2' do
      Ngrams.find('I wish I', 2).should be == ['I wish', 'wish I']
    end

    it 'returns a list of 1 word phrases with default 1' do
      Ngrams.find('I wish I').should be == ['I', 'wish', 'I']
    end
  end

  describe '#words' do
    it 'returns the words of a phrase' do
      Ngrams.words('dog cat bird').should be == ['dog', 'cat', 'bird']
    end

    it 'does not include the ending punctuation' do
      Ngrams.words('dog cat bird.').should be == ['dog', 'cat', 'bird']
    end
  end
end
